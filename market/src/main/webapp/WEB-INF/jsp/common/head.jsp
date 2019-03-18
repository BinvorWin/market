<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/layui/css/layui.css">
</head>
<script src="${pageContext.request.contextPath }/statics/layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
});
</script>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">
    <p>超市进销存管理系统</p>


    </div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          ${staffSession.staffname }
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">修改信息</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/staff/logout">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">进货管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">进货信息</a></dd>
            <dd><a href="javascript:;">退货信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">商品信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="product/getlist">商品信息</a></dd>
            <dd><a href="javascript:;">商品类别</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">库存管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">库存信息</a></dd>
            <dd><a href="javascript:;">库存预警</a></dd>
            <dd><a href="javascript:;">临期产品</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">销售管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">销售信息</a></dd>
            <dd><a href="javascript:;">顾客退货办理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">客户信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">客户信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">供应商信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">供应商信息</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>

</html>