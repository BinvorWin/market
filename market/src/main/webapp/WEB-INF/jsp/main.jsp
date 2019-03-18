<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>超市进销存管理系统</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/layui/css/layui.css">
</head>
<%@include file="common/head.jsp"%>

  <div class="layui-body">
  <span>Welcome,</span>
							
   <h>${staffSession.staffname }</h>
  </div>
  


<%@include file="common/footer.jsp"%>
</body>
</html>