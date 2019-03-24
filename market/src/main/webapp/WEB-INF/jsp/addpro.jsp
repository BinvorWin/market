<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="insertpro">

                      <span class="section">增加商品信息</span>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">商品id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proid" name="proid" class="form-control input-small input-sm "  value="${product.proid}"  type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proname" name="proname" class="form-control col-md-7 col-xs-5" value="${product.pname}"  type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >售价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="price" name="pice" class="form-control col-md-7 col-xs-5" value="${product.price}"  type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >进价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="inprice"  name="inprice" class="form-control col-md-7 col-xs-5" value="${product.inprice}"  type="text" >                        
                      </div>
                      	</div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >生产日期<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="prodate" name="prodate" class="form-control col-md-7 col-xs-5" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${product.prodate}"/>" type="text" >                        
                          </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >过期时间<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="reledate" name="reledate" class="form-control col-md-7 col-xs-5"  value="<fmt:formatDate pattern="yyyy-MM-dd" value="${product.reledate}"/>" type="text">
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >供应商名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="supname" name="supname"  class="form-control col-md-7 col-xs-5" value="${product.supname}"  type="text" >
                        </div>
                      </div>                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >商品类型<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="protype"  name="protype" class="form-control col-md-7 col-xs-5"  value="${product.protype}" type="text" >
                        </div>
                      </div>                      
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >计件方式<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="unit"  name="unit" class="form-control col-md-7 col-xs-5" value="${product.unit}"  type="text" >
                        </div>
                        </div> 
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >备注<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="marks" name="marks" class="form-control col-md-7 col-xs-5" value="${product.marks}"  type="text" >
                        </div>
                        </div>
                      
						<a href="${pageContext.request.contextPath }/staff/flatform/product/getlist" class=" text-left btn btn-default  " role="button">返回上页</a>
						<a href="${pageContext.request.contextPath }/staff/flatform/product/getlist" class=" text-center btn btn-primary  col-md-offset-4 col-lg-offset-4col-xl-offset-4" role="button">新增</a>
								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>