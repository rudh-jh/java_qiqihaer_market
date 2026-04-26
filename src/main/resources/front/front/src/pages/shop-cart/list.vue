<template>
  <div class="cart-page">
    <div class="section-title">购物车</div>

    <div class="cart-tip">
      <span>请选择需要购买的商品，可同时勾选多个商品统一结算。</span>
    </div>

    <el-table
        @selection-change="handleSelectionChange"
        :data="tableData"
        class="cart-table"
        style="width: 100%"
        :header-cell-style="{
        background: '#f1f6ff',
        color: '#0B1F3A',
        fontSize: '16px',
        fontWeight: '800',
        textAlign: 'center'
      }"
        :cell-style="{
        color: '#0B1F3A',
        fontSize: '16px',
        fontWeight: '600'
      }"
    >
      <el-table-column type="selection" width="60" align="center" />

      <el-table-column label="商品信息" min-width="360">
        <template slot-scope="scope">
          <div class="shangpin">
            <el-image
                class="goods-img"
                :src="baseUrl + scope.row.picture"
                fit="contain"
            ></el-image>
            <div class="goods-info">
              <div class="goods-name">{{ scope.row.goodname }}</div>
              <div class="goods-sub">支持多商品合并结算</div>
            </div>
          </div>
        </template>
      </el-table-column>

      <el-table-column label="单价" width="140" align="center">
        <template slot-scope="scope">
          <span class="price-symbol">￥</span>
          <span class="price-text">{{ Number(scope.row.price).toFixed(2) }}</span>
        </template>
      </el-table-column>

      <el-table-column label="数量" width="220" align="center">
        <template slot-scope="scope">
          <el-input-number
              :min="1"
              v-model="scope.row.buynumber"
              @change="(value) => handleChange(value, scope.$index, scope.row)"
              size="small"
          ></el-input-number>
        </template>
      </el-table-column>

      <el-table-column label="小计" width="150" align="center">
        <template slot-scope="scope">
          <span class="price-symbol">￥</span>
          <span class="subtotal-text">{{ (scope.row.price * scope.row.buynumber).toFixed(2) }}</span>
        </template>
      </el-table-column>

      <el-table-column label="操作" width="150" align="center">
        <template slot-scope="scope">
          <el-button
              size="mini"
              type="danger"
              @click="handleDelete(scope.$index, scope.row)"
          >
            删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>

    <div class="empty-tip" v-if="tableData.length === 0">
      购物车暂无商品，请先进入商品详情页添加商品。
    </div>

    <div class="buy" v-if="tableData.length > 0">
      <div class="buy-left">
        <span class="selected-count">已选 {{ selRows.length }} 件商品</span>
        <span class="selected-desc">可一次提交多个商品订单</span>
      </div>

      <div class="buy-right">
        <span class="total-label">合计：</span>
        <span class="total-price">￥{{ totalPrice }}</span>
        <el-button
            type="success"
            class="checkout-btn"
            @click="buyClick"
        >
          去结算
        </el-button>
      </div>
    </div>
  </div>
</template>

<script>
import config from '@/config/config'

export default {
  data() {
    return {
      baseUrl: config.baseUrl,
      tableData: [],
      selRows: []
    }
  },
  created() {
    this.getCartList();
  },
  methods: {
    handleSelectionChange(e) {
      this.selRows = e
    },

    getCartList() {
      this.$http.get('cart/list', {
        params: {
          page: 1,
          limit: 1000,
          userid: localStorage.getItem('frontUserid')
        }
      }).then(res => {
        if (res.data.code == 0) {
          this.tableData = res.data.data.list;
        }
      });
    },

    handleChange(value, index, row) {
      this.$http.get(`${row.tablename}/detail/${row.goodid}`).then(res => {
        if (res.data.code == 0) {
          const detail = res.data.data;

          if (detail.onelimittimes && detail.onelimittimes > 0) {
            if (value > detail.onelimittimes) {
              this.tableData[index].buynumber = detail.onelimittimes;
              row.buynumber = detail.onelimittimes;
              this.$message.error(`每人单次只能购买${detail.onelimittimes}件`);
            } else {
              row.buynumber = value;
              this.$http.post('cart/update', row).then(res => {});
            }
          } else {
            row.buynumber = value;
            this.$http.post('cart/update', row).then(res => {});
          }
        }
      });
    },

    handleDelete(index, row) {
      this.$confirm('是否确认删除该商品?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        let delIds = [];
        delIds.push(row.id);

        this.$http.post('cart/delete', delIds).then(res => {
          if (res.data.code == 0) {
            this.$message({
              type: 'success',
              message: '删除成功!',
              duration: 1500,
              onClose: () => {
                this.getCartList();
              }
            });
          }
        });
      });
    },

    async buyClick() {
      if (this.selRows.length === 0) {
        this.$message({
          type: 'warning',
          message: '请选择需要结算的商品',
          duration: 1500,
        });
        return;
      }

      try {
        const checks = await Promise.all(
            this.selRows.map(item => {
              return this.$http.get(`${item.tablename}/detail/${item.goodid}`);
            })
        );

        for (let i = 0; i < checks.length; i++) {
          const res = checks[i];
          const item = this.selRows[i];

          if (res.data.code === 0) {
            const stock = Number(res.data.data.alllimittimes || 0);
            const buyNumber = Number(item.buynumber || 0);

            if (buyNumber > stock) {
              this.$message.error(`${item.goodname} 库存不足，当前库存为 ${stock}`);
              return;
            }
          }
        }

        localStorage.setItem('orderGoods', JSON.stringify(this.selRows));
        this.$router.push('/index/shop-order/orderConfirm');
      } catch (e) {
        this.$message.error('库存检查失败，请稍后重试');
      }
    }
  },
  computed: {
    totalPrice() {
      let totalPrice = 0;
      for (let x in this.selRows) {
        totalPrice += Number(this.selRows[x].price) * Number(this.selRows[x].buynumber)
      }
      return totalPrice.toFixed(2);
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
.cart-page {
  width: 1100px;
  min-height: 520px;
  padding: 24px 28px 30px;
  margin: 24px auto;
  position: relative;
  background: #ffffff;
  border-radius: 10px;
  box-shadow: 0 4px 18px rgba(0, 0, 0, 0.08);
  box-sizing: border-box;
}

.section-title {
  margin: 0 0 18px;
  color: #0B1F3A;
  text-align: center;
  background: linear-gradient(180deg, #dfeaff 0%, rgba(241, 231, 255, 0) 100%);
  clip-path: polygon(30px 0%, 0% 100%, 100% 100%, calc(100% - 30px) 0%);
  width: 100%;
  font-size: 26px;
  line-height: 60px;
  font-weight: 900;
  letter-spacing: 2px;
}

.cart-tip {
  margin: 0 0 16px;
  padding: 12px 18px;
  background: #f5f8ff;
  border-left: 5px solid #0B1F3A;
  color: #0B1F3A;
  font-size: 16px;
  font-weight: 700;
  line-height: 26px;
}

.cart-table {
  border-radius: 8px;
  overflow: hidden;
}

.shangpin {
  display: flex;
  align-items: center;
}

.goods-img {
  width: 96px;
  height: 96px;
  flex-shrink: 0;
  border: 1px solid #e6eaf2;
  border-radius: 6px;
  background: #ffffff;
}

.goods-info {
  margin-left: 16px;
  min-width: 0;
}

.goods-name {
  color: #0B1F3A;
  font-size: 17px;
  font-weight: 800;
  line-height: 28px;
}

.goods-sub {
  margin-top: 4px;
  color: #666;
  font-size: 13px;
  font-weight: 600;
}

.price-symbol {
  font-size: 14px;
  color: #c00000;
  font-weight: 800;
}

.price-text {
  font-size: 17px;
  color: #c00000;
  font-weight: 800;
}

.subtotal-text {
  font-size: 18px;
  color: #c00000;
  font-weight: 900;
}

.empty-tip {
  margin: 24px 0 0;
  text-align: center;
  color: #666;
  font-size: 16px;
  font-weight: 700;
}

.buy {
  margin-top: 22px;
  padding: 18px 22px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: #f6f8fb;
  border-radius: 8px;
  border: 1px solid #e4e9f2;
}

.buy-left {
  display: flex;
  flex-direction: column;
}

.selected-count {
  color: #0B1F3A;
  font-size: 18px;
  font-weight: 900;
  line-height: 28px;
}

.selected-desc {
  color: #666;
  font-size: 14px;
  font-weight: 600;
}

.buy-right {
  display: flex;
  align-items: center;
}

.total-label {
  color: #0B1F3A;
  font-size: 18px;
  font-weight: 800;
}

.total-price {
  margin-right: 24px;
  color: #c00000;
  font-size: 26px;
  font-weight: 900;
}

.checkout-btn {
  width: 130px;
  height: 42px;
  font-size: 17px;
  font-weight: 800;
}

::v-deep .el-table {
  color: #0B1F3A;
  font-size: 16px;
}

::v-deep .el-table td {
  padding: 14px 0;
}

::v-deep .el-input-number--small {
  width: 130px;
}
</style>