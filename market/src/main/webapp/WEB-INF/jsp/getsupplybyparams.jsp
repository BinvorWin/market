<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>  
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>供应商信息查询结果列表 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					    	<tr>
					        	 <th>供应商id</th>
					        	 <th>供应商姓名</th>
					        	 <th>供应商电话</th>
					        	 <th>负责人</th>
					        	 <th>地址</th>
					        	 <th>邮箱</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="supply">
					        	<tr>
					                         <th>${supply.supid}</th>
					                         <th>${supply.suppname}</th>
					                         <th>${supply.tel}</th>
					                         <th>${supply.person}</th>
					                         <th>${supply.address}</th>
					                         <th>${supply.emali}</th>
					                         <th>
					                            <div class="btn-group">
												<a href="${pageContext.request.contextPath }/staff/flatform/supply/toupdate?supid=${supply.supid}" class= "btn btn-primary btn-xs">修改</a>
					                            <a onclick="del(${supply.supid})"  class= "btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
					                         </th>
					          	</tr>
					         </c:forEach>
	                    </table>
	                  </div>
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6">总 ${pageInfo.total } 条记录</div>
							<!-- 分页条信息 -->
							
						</div>
						
	                </div>
	                <a href="${pageContext.request.contextPath }/staff/flatform/supply/getall" class=" text-left btn btn-default  " role="button">返回上页</a>
	</div>
</div>
</div>

<%@include file="common/footer.jsp"%>
<script type="text/javascript">
	function del(id) {
		var message=confirm("是否确认要删除?");
		if (message==true) {
			// 确认时做的操作 var 
			window.location.href="${pageContext.request.contextPath }/staff/flatform/supply/delete?supid="+id;
			alert("删除成功");
	} else {
		// 取消时做的操作
		alert("删除失败");
	}
}</script>