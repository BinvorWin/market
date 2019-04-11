<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" novalidate>
                      <span class="section">个人信息</span>
						
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">员工id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="staffid" class="form-control input-small input-sm "  value="${staff.staffid}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >姓名<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="staffname" class="form-control col-md-7 col-xs-5" value="${staff.staffname}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >身份证 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="card" class="form-control col-md-7 col-xs-5" value="${staff.card}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >性别 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="sex" class="form-control col-md-7 col-xs-5" value="${staff.sex}"  type="text" readonly>                        
                      </div>
                      	</div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >电话<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="tel" class="form-control col-md-7 col-xs-5"  value="${staff.tel}" type="text" readonly>                        
                          </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >身份类型<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="stafftype" class="form-control col-md-7 col-xs-5"  value="${staff.stafftype}" type="text" readonly>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >密码<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="pwd" class="form-control col-md-7 col-xs-5" value="${staff.pwd}"  type="password" readonly>
                        </div>
                      </div>                      
                      
						<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
						<a href="${pageContext.request.contextPath }/staff/toupdate?staffid=${staff.staffid}" class=" text-center btn btn-primary  col-md-offset-4 col-lg-offset-4col-xl-offset-4" role="button">修改</a>
								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>