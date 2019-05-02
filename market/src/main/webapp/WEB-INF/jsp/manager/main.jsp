<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
		<h3>欢迎：${managerSession.stafftype}<strong>${managerSession.managername}</strong>登录</h3>
		<span style="color: red;"><h2>${msg }</h2></span>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>