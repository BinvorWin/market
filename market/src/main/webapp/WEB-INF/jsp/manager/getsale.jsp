<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" novalidate>

                      <span class="section">订单信息</span>
					  <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">订单id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="saleid" class="form-control input-small input-sm "  value="${sale.saleid}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">商品id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proid" class="form-control input-small input-sm "  value="${sale.proid}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proname" class="form-control col-md-7 col-xs-5" value="${sale.pname}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >售价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="price" class="form-control col-md-7 col-xs-5" value="${sale.price}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >数量<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="num" class="form-control col-md-7 col-xs-5" value="${sale.num}"  type="text" readonly>
                        </div>  
                        </div> 
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >总价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="total" class="form-control col-md-7 col-xs-5" value="${sale.total}"  type="text" readonly>                        
                      </div>
                      	</div>
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >备注<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="marks" class="form-control col-md-7 col-xs-5" value="${sale.marks}"  type="text" readonly>
                        </div>
                        </div>
                      
						<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
						<a href="${pageContext.request.contextPath }/manager/flatform/sale/toupdate?saleid=${sale.saleid}" class=" text-center btn btn-primary  col-md-offset-4 col-lg-offset-4col-xl-offset-4" role="button">修改</a>
								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>