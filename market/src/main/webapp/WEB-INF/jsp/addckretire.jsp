<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="insert">

                      <span class="section">新增退货信息</span>
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">订单id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="inid" name="inid" class="form-control input-small input-sm "  value="${ckretire.inid}"  type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">商品id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proid" name="proid" class="form-control input-small input-sm "  value="${ckretire.proid}"  type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="pname" name="pname" class="form-control col-md-7 col-xs-5" value="${ckretire.pname}"  type="text" >
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >数量 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="num" name="num" class="form-control col-md-7 col-xs-5" value="${ckretire.num}"  type="text" >
                        </div>
                      </div>
                     <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >进货日期<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="indate"  name="indate" class="form-control col-md-7 col-xs-5" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${ckretire.indate}"/>" type="date" >                        
                          </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >退货日期<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="retdate"  name="retdate" class="form-control col-md-7 col-xs-5" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${ckretire.retdate}"/>" type="date" >                        
                          </div>
                      </div>
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >备注<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="marks" name="marks" class="form-control col-md-7 col-xs-5" value="${ckretire.marks}"  type="text" >
                        </div>
                        </div>
						<a href="${pageContext.request.contextPath }/staff/flatform/ckretire/getall" class=" text-left btn btn-default  " role="button">返回上页</a>
						<input type="submit" value="增加">								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>