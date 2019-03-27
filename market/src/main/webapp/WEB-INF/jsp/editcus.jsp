<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="update">

                      <span class="section">修改客户信息</span>

                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >客户id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="cusid" name="cusid"  class="form-control col-md-7 col-xs-5" value="${custom.cusid}"  type="text" >
                        </div>
                      </div>                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >客户姓名<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="cusname"  name="cusname" class="form-control col-md-7 col-xs-5"  value="${custom.cusname}" type="text" >
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >客户电话<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="tel"  name="tel" class="form-control col-md-7 col-xs-5"  value="${custom.tel}" type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >负责人<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="person"  name="person" class="form-control col-md-7 col-xs-5"  value="${custom.person}" type="text" >
                        </div>
                      </div>  
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >地址<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="address"  name="address" class="form-control col-md-7 col-xs-5"  value="${custom.address}" type="text" >
                        </div>
                      </div> 
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >邮箱<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="emali"  name="emali" class="form-control col-md-7 col-xs-5"  value="${custom.emali}" type="text" >
                        </div>
                      </div> 
						<a href="${pageContext.request.contextPath }/staff/flatform/custom/getall" class=" text-left btn btn-default  " role="button">返回上页</a>
						<input type="submit" value="修改">								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>