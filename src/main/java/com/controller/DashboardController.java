package com.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.NonghuEntity;
import com.entity.OrdersEntity;
import com.entity.ZhunongshangpinEntity;
import com.service.NonghuService;
import com.service.OrdersService;
import com.service.ZhunongshangpinService;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 后台首页统计接口
 * admin 查看全平台数据
 * 供应商/农户 只查看自己名下商品、订单、销量、销售额
 */
@RestController
@RequestMapping("/dashboard")
public class DashboardController {

    @Autowired
    private ZhunongshangpinService zhunongshangpinService;

    @Autowired
    private NonghuService nonghuService;

    @Autowired
    private OrdersService ordersService;

    @RequestMapping("/statistics")
    public R statistics(HttpServletRequest request) {
        Map<String, Object> result = new HashMap<String, Object>();

        String role = "";
        String username = "";

        Object roleObj = request.getSession().getAttribute("role");
        Object usernameObj = request.getSession().getAttribute("username");

        if (roleObj != null) {
            role = roleObj.toString();
        }
        if (usernameObj != null) {
            username = usernameObj.toString();
        }

        boolean isAdmin = "管理员".equals(role);

        /**
         * 1. 商品数量
         * 管理员：全部商品
         * 供应商：自己名下商品
         */
        EntityWrapper<ZhunongshangpinEntity> productWrapper = new EntityWrapper<ZhunongshangpinEntity>();
        if (!isAdmin) {
            productWrapper.eq("nonghuzhanghao", username);
        }

        Integer productCount = zhunongshangpinService.selectCount(productWrapper);
        if (productCount == null) {
            productCount = 0;
        }

        /**
         * 2. 供货商数量
         * 只有管理员看全平台供货商数量
         * 供应商不需要看全部供货商数量
         */
        Integer supplierCount = 0;
        if (isAdmin) {
            supplierCount = nonghuService.selectCount(new EntityWrapper<NonghuEntity>());
            if (supplierCount == null) {
                supplierCount = 0;
            }
        } else {
            supplierCount = 1;
        }

        /**
         * 3. 订单数量
         * 管理员：全部订单
         * 供应商：自己名下商品产生的订单
         */
        EntityWrapper<OrdersEntity> orderWrapper = new EntityWrapper<OrdersEntity>();
        if (!isAdmin) {
            orderWrapper.eq("nonghuzhanghao", username);
        }

        Integer orderCount = ordersService.selectCount(orderWrapper);
        if (orderCount == null) {
            orderCount = 0;
        }

        /**
         * 4. 销售量和销售额
         * 只统计已支付订单
         * 管理员：全部已支付订单
         * 供应商：自己名下已支付订单
         */
        EntityWrapper<OrdersEntity> paidWrapper = new EntityWrapper<OrdersEntity>();

        paidWrapper.andNew()
                .eq("status", "已支付")
                .or()
                .eq("status", "已发货")
                .or()
                .eq("status", "已完成")
                .or()
                .eq("status", "已收货")
                .or()
                .eq("status", "已确认收货");

        if (!isAdmin) {
            paidWrapper.eq("nonghuzhanghao", username);
        }

        List<OrdersEntity> paidOrders = ordersService.selectList(paidWrapper);

        int salesCount = 0;
        double salesAmount = 0.0;

        if (paidOrders != null && paidOrders.size() > 0) {
            for (OrdersEntity order : paidOrders) {
                if (order.getBuynumber() != null) {
                    salesCount += order.getBuynumber();
                }

                if (order.getTotal() != null) {
                    salesAmount += order.getTotal();
                }
            }
        }

        result.put("isAdmin", isAdmin);
        result.put("role", role);
        result.put("username", username);
        result.put("productCount", productCount);
        result.put("supplierCount", supplierCount);
        result.put("orderCount", orderCount);
        result.put("salesCount", salesCount);
        result.put("salesAmount", String.format("%.2f", salesAmount));

        return R.ok().put("data", result);
    }
}