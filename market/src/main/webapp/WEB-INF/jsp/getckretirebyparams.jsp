<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>    
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>退货信息列表 </h2>
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
					        	 <th>进货日期</th>
					        	 <th>退货日期</th>
					        	 <th>备注</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="ckretire">
					        	<tr>
					        			     <th>${ckretire.inid}</th>
					        			     <th>${ckretire.proid}</th>
					                         <th>${ckretire.pname}</th>
					                         <th>${ckretire.num}</th>
					                         <th><fmt:formatDate pattern="yyyy-MM-dd" value="${ckretire.indate}"/></th>
					                         <th><fmt:formatDate pattern="yyyy-MM-dd" value="${ckretire.retdate}"/></th>
					                         <th>${ckretire.marks}</th>      
					                         <th>
											   <a href="${pageContext.request.contextPath }/staff/flatform/ckretire/edit?inid=${ckretire.inid}" class="btn btn-primary btn-xs">修改</a>
					                           <a onclick="del(${ckretire.inid})"  class="btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
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
						<a href="${pageContext.request.contextPath }/staff/flatform/ckretire/getall" class=" text-left btn btn-default" role="button">返回上页</a>
		
	                </div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
<script type="text/javascript">
	function del(id) {
		var message=confirm("是否确认要删除?");
		if (message==true) {
			// 确认时做的操作 var 
			window.location.href="${pageContext.request.contextPath }/staff/flatform/ckretire/delete?inid="+id;
			alert("删除成功");
	} else {
		// 取消时做的操作
		alert("删除失败");
	}
}
</script>