<template>
  <div class="confirm-page">
    <div class="section-title">确认{{ totalPrice > 0 ? '下单' : '预订' }}</div>

    <div v-if="seat != 1" class="block-card">
      <div class="block-title">选择收货地址</div>
      <el-table
        :data="addressList"
        class="confirm-table address-table"
        style="width: 100%"
        :header-cell-style="tableHeaderStyle"
        :cell-style="tableCellStyle"
      >
        <el-table-column label="选择" width="70" align="center">
          <template slot-scope="scope">
            <el-radio
              v-model="radio"
              :label="scope.$index"
              @change.native="getCurrentRow(scope.$index)"
            >
              &nbsp;
            </el-radio>
          </template>
        </el-table-column>
        <el-table-column label="收件人" prop="name" width="140" align="center" />
        <el-table-column label="联系方式" prop="phone" width="180" align="center" />
        <el-table-column label="收货地址" prop="address" min-width="360" />
      </el-table>

      <div class="address-action">
        <el-button type="success" class="address-btn" @click="addAddress">添加收货地址</el-button>
      </div>
    </div>

    <div class="block-card">
      <div class="block-title">商品清单</div>
      <el-table
        :data="tableData"
        class="confirm-table"
        style="width: 100%"
        :header-cell-style="tableHeaderStyle"
        :cell-style="tableCellStyle"
      >
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
                <div class="goods-sub">已选择数量：{{ scope.row.buynumber }}</div>
              </div>
            </div>
          </template>
        </el-table-column>

        <el-table-column v-if="totalPrice > 0" label="单价" width="140" align="center">
          <template slot-scope="scope">
            <span v-if="type == 2">{{ scope.row.price }} 积分</span>
            <span v-else>
              <span class="price-symbol">￥</span>
              <span class="price-text">{{ Number(scope.row.price || 0).toFixed(2) }}</span>
            </span>
          </template>
        </el-table-column>

        <el-table-column v-if="seat == 1" label="座位" width="120" align="center">
          <template slot-scope="scope">
            <span>{{ scope.row.activeSeat }}</span>
          </template>
        </el-table-column>

        <el-table-column v-if="seat != 1" label="数量" width="120" align="center">
          <template slot-scope="scope">
            <span class="count-text">{{ scope.row.buynumber }}</span>
          </template>
        </el-table-column>

        <el-table-column v-if="totalPrice > 0" label="小计" width="160" align="center">
          <template slot-scope="scope">
            <span v-if="type == 2">{{ scope.row.price * scope.row.buynumber }} 积分</span>
            <span v-else>
              <span class="price-symbol">￥</span>
              <span class="subtotal-text">{{ changePrice(scope.row) }}</span>
            </span>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <div class="remark-card">
      <div class="remark-label">订单备注</div>
      <el-input
        type="textarea"
        v-model="remark"
        placeholder="如有特殊配送要求，可在此填写"
        :rows="3"
      ></el-input>
    </div>

    <div class="buy" v-if="seat != 1 && tableData.length > 0">
      <template v-if="type == 2">
        <div class="summary-left">
          <span class="summary-title">订单合计</span>
          <span class="summary-desc">共 {{ totalNumber }} 件商品</span>
        </div>
        <div class="summary-right">
          <span class="total-price">{{ totalPrice }} 积分</span>
          <el-button type="warning" class="pay-btn" @click="jfClick">兑换</el-button>
        </div>
      </template>

      <template v-else>
        <div class="summary-left">
          <span class="summary-title">订单合计</span>
          <span class="summary-desc">共 {{ totalNumber }} 件商品，支持多商品统一下单</span>
        </div>
        <div class="summary-right">
          <span class="total-label">总价：</span>
          <span class="total-price">￥{{ totalPrice }}</span>
          <el-button type="success" class="pay-btn" @click="payClick">支付</el-button>
        </div>
      </template>
    </div>

    <div class="buy" v-if="seat == 1 && tableData.length > 0">
      <template v-if="type == 2">
        <div class="summary-left">
          <span class="summary-title">订单合计</span>
          <span class="summary-desc">座位类订单</span>
        </div>
        <div class="summary-right">
          <span class="total-price">{{ totalPrice }} 积分</span>
          <el-button type="success" class="pay-btn" @click="xzJfClick">兑换</el-button>
        </div>
      </template>

      <template v-else>
        <div class="summary-left">
          <span class="summary-title">订单合计</span>
          <span class="summary-desc">座位类订单</span>
        </div>
        <div class="summary-right">
          <span class="total-label" v-if="totalPrice > 0">总价：</span>
          <span class="total-price" v-if="totalPrice > 0">￥{{ totalPrice }}</span>
          <el-button type="success" class="pay-btn" @click="xzPayClick">{{ totalPrice > 0 ? '支付' : '预订' }}</el-button>
        </div>
      </template>
    </div>
  </div>
</template>

<script>
import config from '@/config/config'

export default {
  data() {
    return {
      baseUrl: config.baseUrl,
      userTableName: localStorage.getItem('UserTableName'),
      addressList: [],
      tableData: [],
      currentRow: null,
      radio: -1,
      order: {
        address: '',
        buynumber: 0,
        consignee: '',
        discountprice: 0,
        discounttotal: 0,
        goodid: 0,
        goodname: '',
        nonghuzhanghao: '',
        orderid: '',
        picture: '',
        price: 0,
        status: '未支付',
        tablename: '',
        tel: '',
        total: 0,
        type: 1,
        userid: localStorage.getItem('frontUserid')
      },
      user: {},
      type: 0,
      seat: 0,
      buynumber: 0,
      remark: '',
      orderIdList: {},
      tableHeaderStyle: {
        background: '#f1f6ff',
        color: '#0B1F3A',
        fontSize: '16px',
        fontWeight: '800',
        textAlign: 'center'
      },
      tableCellStyle: {
        color: '#0B1F3A',
        fontSize: '16px',
        fontWeight: '600'
      }
    }
  },
  created() {
    if (this.$route.query.type != undefined) {
      this.type = this.$route.query.type;
    }
    if (this.$route.query.seat != undefined) {
      this.seat = this.$route.query.seat;
    }
    if (this.$route.query.tablename != undefined) {
      this.order.tablename = this.$route.query.tablename;
    }

    this.getSession();
    this.getAddrList();

    const orderGoods = localStorage.getItem('orderGoods');
    if (orderGoods) {
      this.tableData = JSON.parse(orderGoods);
    } else {
      this.tableData = [];
    }

    this.type = this.$route.query.type;
  },
  methods: {
    changePrice(row) {
      const price = Number(row.price || 0) * Number(row.buynumber || 0);
      row.total = price.toFixed(2);
      return price.toFixed(2);
    },

    getSession() {
      if (!this.userTableName) {
        this.$router.push('/login');
        return false;
      }
      this.$http.get(`${this.userTableName}/session`, { emulateJSON: true }).then(res => {
        if (res.data.code == 0) {
          this.user = res.data.data;
        }
      });
    },

    getCurrentRow(index) {
      this.radio = index;
    },

    getAddrList() {
      this.$http.get('address/list', {
        params: { userid: localStorage.getItem('frontUserid') }
      }).then(res => {
        if (res.data.code == 0) {
          this.addressList = res.data.data.list;
          this.addressList.forEach((item, index) => {
            if (item.isdefault == '是') {
              this.radio = index;
            }
          });
        }
      });
    },

    addAddress() {
      this.$router.push('/index/shop-address/addOrUpdate');
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
          if (this.$route.query.id != undefined || this.$route.query.type != undefined) {
            this.tableData = [];
            this.buynumber = this.$route.query.buynumber;
            let detailObj = JSON.parse(this.$route.query.detailObj);
            this.order.tablename = this.$route.query.tablename;
            if (this.$route.query.type == 1) {
              this.tableData.push({
                buynumber: this.buynumber,
                goodid: detailObj.id,
                picture: this.$route.query.picture,
                goodname: this.$route.query.goodname,
                goodtype: this.$route.query.goodtype,
                tablename: this.$route.query.tablename,
                userid: localStorage.getItem('frontUserid'),
                price: this.$route.query.price
              });
            }
            if (this.$route.query.type == 2) {
              this.tableData.push({
                buynumber: this.buynumber,
                goodid: detailObj.id,
                picture: this.$route.query.picture,
                goodname: this.$route.query.goodname,
                tablename: this.$route.query.tablename,
                userid: localStorage.getItem('frontUserid'),
                jf: detailObj.jf
              });
            }
          }
        }
      });
    },

    handleChange(value, index, goodid) {
      this.$http.get(`${this.order.tablename}/detail/${goodid}`).then(res => {
        if (res.data.code == 0 && value > res.data.data.onelimittimes) {
          this.tableData[index].buynumber = --value;
          this.$message.error(`每人单次只能购买${res.data.data.onelimittimes}件`);
        }
      });
    },

    async payClick() {
      if (this.radio == -1) {
        this.$message({
          message: '请选择收货地址',
          type: 'error',
          duration: 1500
        });
        return;
      }

      if (!this.tableData.length) {
        this.$message({
          message: '订单中没有商品',
          type: 'warning',
          duration: 1500
        });
        return;
      }

      if (Number(this.user.money || 0) < Number(this.totalPrice)) {
        this.$message({
          message: '余额不足，请先充值',
          type: 'error',
          duration: 1500,
          onClose: () => {
            this.$router.push('/index/center');
          }
        });
        return;
      }

      try {
        for (let index in this.tableData) {
          const item = this.tableData[index];
          const detailRes = await this.$http.get(`${item.tablename}/info/${item.goodid}`);

          if (detailRes.data.code != 0) {
            this.$message.error(`${item.goodname} 商品信息获取失败`);
            return;
          }

          const data = detailRes.data.data;
          const buyNumber = Number(item.buynumber || 0);
          const stock = Number(data.alllimittimes || 0);

          if (buyNumber > stock) {
            this.$message.error(`${item.goodname} 库存不足，当前库存为 ${stock}`);
            return;
          }
        }

        for (let index in this.tableData) {
          const item = this.tableData[index];
          const detailRes = await this.$http.get(`${item.tablename}/info/${item.goodid}`);
          const data = detailRes.data.data;
          const buyNumber = Number(item.buynumber || 0);
          const itemTotal = Number(item.price || 0) * buyNumber;
          const orderid = String(this.createOrder()) + String(index);

          data.alllimittimes = Number(data.alllimittimes || 0) - buyNumber;
          data.salenum = Number(data.salenum || 0) + buyNumber;

          await this.$http.post(`${item.tablename}/update`, data);

          const order = {
            orderid: orderid,
            tablename: item.tablename,
            userid: this.user.id,
            goodid: item.goodid,
            goodname: item.goodname,
            nonghuzhanghao: item.nonghuzhanghao,
            goodtype: item.goodtype,
            picture: item.picture,
            buynumber: buyNumber,
            discountprice: Number(item.price || 0),
            price: Number(item.price || 0),
            total: Number(itemTotal.toFixed(2)),
            discounttotal: Number(itemTotal.toFixed(2)),
            type: this.type ? Number(this.type) : 1,
            address: this.addressList[this.radio].address,
            tel: this.addressList[this.radio].phone,
            consignee: this.addressList[this.radio].name,
            remark: this.remark,
            status: '已支付',
            sfsh: '',
            role: this.userTableName
          };

          await this.$http.post('orders/add', order);

          if (item.id) {
            await this.$http.post('cart/delete', [item.id]);
          }
        }

        this.user.money = Number((Number(this.user.money || 0) - Number(this.totalPrice)).toFixed(2));
        this.$http.post(`${this.userTableName}/update`, this.user).then(res => {
          localStorage.setItem('sessionForm', JSON.stringify(this.user));
          this.$message({
            message: '购买成功',
            type: 'success',
            duration: 1500,
            onClose: () => {
              this.$router.push('/index/shop-order/order');
            }
          });
        });
      } catch (e) {
        this.$message.error('下单失败，请稍后重试');
      }
    },

    jfClick() {
      this.$message.warning('积分兑换功能暂未启用');
    },

    xzJfClick() {
      this.$message.warning('积分兑换功能暂未启用');
    },

    xzPayClick() {
      this.payClick();
    },

    createOrder() {
      let order = '';
      let now = new Date();
      order += now.getFullYear();
      order += now.getMonth() + 1;
      order += now.getDate();
      order += now.getHours();
      order += now.getMinutes();
      order += now.getSeconds();
      order += now.getMilliseconds();
      return order;
    }
  },
  computed: {
    totalPrice() {
      let totalPrice = 0;
      this.tableData.forEach(item => {
        totalPrice += Number(item.price || 0) * Number(item.buynumber || 0);
      });
      return totalPrice.toFixed(2);
    },

    totalNumber() {
      let total = 0;
      this.tableData.forEach(item => {
        total += Number(item.buynumber || 0);
      });
      return total;
    },

    totalJifen() {
      let totalJifen = 0;
      this.tableData.forEach(item => {
        totalJifen += parseInt(item.jf * this.buynumber);
      });
      return totalJifen;
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
  .confirm-page {
    width: 1100px;
    min-height: 560px;
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

  .block-card {
    margin-bottom: 22px;
    padding: 18px;
    background: #ffffff;
    border: 1px solid #e4e9f2;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.04);
  }

  .block-title {
    margin-bottom: 14px;
    padding-left: 12px;
    border-left: 5px solid #0B1F3A;
    color: #0B1F3A;
    font-size: 20px;
    font-weight: 900;
    line-height: 32px;
  }

  .address-action {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 16px 0 0;
  }

  .address-btn {
    width: 150px;
    height: 40px;
    font-size: 16px;
    font-weight: 800;
  }

  .confirm-table {
    border-radius: 8px;
    overflow: hidden;
  }

  .shangpin {
    display: flex;
    align-items: center;
  }

  .goods-img {
    width: 90px;
    height: 90px;
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
    font-weight: 900;
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

  .count-text {
    font-size: 18px;
    color: #0B1F3A;
    font-weight: 900;
  }

  .remark-card {
    margin-bottom: 22px;
    padding: 18px;
    display: flex;
    align-items: flex-start;
    background: #f6f8fb;
    border: 1px solid #e4e9f2;
    border-radius: 10px;
    box-sizing: border-box;
  }

  .remark-label {
    width: 90px;
    color: #0B1F3A;
    font-size: 17px;
    font-weight: 900;
    line-height: 40px;
  }

  .remark-card /deep/ .el-textarea {
    width: calc(100% - 90px);
  }

  .buy {
    padding: 20px 24px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #f6f8fb;
    border-radius: 10px;
    border: 1px solid #e4e9f2;
  }

  .summary-left {
    display: flex;
    flex-direction: column;
  }

  .summary-title {
    color: #0B1F3A;
    font-size: 20px;
    font-weight: 900;
    line-height: 30px;
  }

  .summary-desc {
    color: #666;
    font-size: 14px;
    font-weight: 600;
  }

  .summary-right {
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
    font-size: 28px;
    font-weight: 900;
  }

  .pay-btn {
    width: 130px;
    height: 42px;
    font-size: 17px;
    font-weight: 900;
  }

  ::v-deep .el-table {
    color: #0B1F3A;
    font-size: 16px;
  }

  ::v-deep .el-table td {
    padding: 14px 0;
  }

  ::v-deep .el-textarea__inner {
    font-size: 15px;
    color: #0B1F3A;
    font-weight: 600;
  }
</style>
