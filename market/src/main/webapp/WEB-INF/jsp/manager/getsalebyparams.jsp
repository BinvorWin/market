<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>    
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>查询结果 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<!-- 按钮 -->
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					    	<tr>
					    		 <th>订单id</th>
					        	 <th>商品id</th>
					        	 <th>名称</th>
					        	 <th>数量</th>
					        	 <th>售价</th>
					        	 <th>总价</th>
					        	 <th>客户id</th>
					        	 <th>客户姓名</th>
					        	 <th>备注</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="sale">
					        	<tr>
					        				 <th>${sale.saleid}</th>
					                         <th>${sale.proid}</th>
					                         <th>${sale.pname}</th>
					                         <th>${sale.num}</th>
					                         <th>${sale.price}</th>
					                         <th>${sale.total}</th>
					                         <th>${sale.cusid}</th>
					                         <th>${sale.cusname}</th>
					                         <th>${sale.marks}</th>      
					                         <th>
												<a href="${pageContext.request.contextPath }/manager/flatform/sale/getbyid?saleid=${sale.saleid}" class="btn btn-primary btn-xs" >查看</a>
					                            <a onclick="del(${sale.saleid})"  class="btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
					                         </th>
					          	</tr>
					         </c:forEach>
	                    </table>
	                  </div>
	                  </div>
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6">总 ${pageInfo.total } 条记录</div>
							
							
						</div>
		<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
	                </div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
<script type="text/javascript">
	function del(id) {
		var message=confirm("是否确认要删除?");
		if (message==true) {
			// 确认时做的操作 var 
			window.location.href="${pageContext.request.contextPath }/manager/flatform/sale/delete?saleid="+id;
			alert("删除成功");
	} else {
		// 取消时做的操作
		alert("删除失败");
	}
}
</script>