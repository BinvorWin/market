<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>    
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>库存信息查询结果列表 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					    	<tr>
					        	 <th>商品id</th>
					        	 <th>名称</th>
					        	 <th>数量</th>
					        	 <th>备注</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="kcxx">
					        	<tr>
					                         <th>${kcxx.proid}</th>
					                         <th>${kcxx.pname}</th>
					                         <th>${kcxx.num}</th>
					                         <th>${kcxx.marks}</th>      
					                         <th>
					                            <a href="${pageContext.request.contextPath }/manager/flatform/kcxx/toupdate?proid=${kcxx.proid}" class="btn btn-primary btn-xs">进货</a> 
					                            <a onclick="del(${kcxx.proid})"  class="btn btn-danger btn-xs" aria-label="Left Align" role="button">退货</a>
					                         </th>
					          	</tr>
					         </c:forEach>
	                    </table>
	                  </div>
	                  </div>
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
								页,总 ${pageInfo.total } 条记录</div>
							
						</div>
						<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
	                </div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
<script type="text/javascript">
	function del(id) {
		var message=confirm("是否确认要退货?");
		if (message==true) {
			// 确认时做的操作 var 
			window.location.href="${pageContext.request.contextPath }/manager/flatform/kcxx/delete?proid="+id;
			alert("退货成功");
	} else {
		// 取消时做的操作
		alert("退货失败");
	}
}
</script>