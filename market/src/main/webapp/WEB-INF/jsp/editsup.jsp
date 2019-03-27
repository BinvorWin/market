<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="update">

                      <span class="section">修改供应商信息</span>

                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >供应商id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="supid" name="supid"  class="form-control col-md-7 col-xs-5" value="${supply.supid}"  type="text" >
                        </div>
                      </div>                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >供应商姓名<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="suppname"  name="suppname" class="form-control col-md-7 col-xs-5"  value="${supply.suppname}" type="text" >
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >供应商电话<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="tel"  name="tel" class="form-control col-md-7 col-xs-5"  value="${supply.tel}" type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >负责人<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="person"  name="person" class="form-control col-md-7 col-xs-5"  value="${supply.person}" type="text" >
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >地址<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="address"  name="address" class="form-control col-md-7 col-xs-5"  value="${supply.address}" type="text" >
                        </div>
                      </div> 
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >邮箱<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="email"  name="emalisss" class="form-control col-md-7 col-xs-5"  value="${supply.emali}" type="text" >
                        </div>
                      </div> 
						<a href="${pageContext.request.contextPath }/staff/flatform/supply/getall" class=" text-left btn btn-default  " role="button">返回上页</a>
						<input type="submit" value="修改">								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>