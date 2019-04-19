<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="insert">

                      <span class="section">增加类别信息</span>

                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >类别id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="protypeid" name="protypeid"  class="form-control col-md-7 col-xs-5" value="${type.protypeid}"  type="text" >
                        </div>
                      </div>                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >商品类型<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="typename"  name="typename" class="form-control col-md-7 col-xs-5"  value="${type.typename}" type="text" >
                        </div>
                      </div>                      
						<a onclick="javascript:history.back(-1);"  class=" text-left btn btn-default  " role="button">返回上页</a>
						<input type="submit" value="增加">								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>