<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>    
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>商品信息列表 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<!-- 按钮 -->
					<div class="row">
						<div class="col-md-4 col-md-offset-10">
							<button class="btn btn-primary">新增</button>
						</div>
					</div>
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered">
					    	<tr>
					        	 <th>商品id</th>
					        	 <th>名称</th>
					         	 <th>售价</th>
					         	 <th>进价</th>
					        	 <th>生产日期</th>
					        	 <th>过期时间</th>
					        	 <th>供应商名称</th>
					        	 <th>商品类型</th>
					        	 <th>计件方式</th>
					        	 <th>备注</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="product">
					        	<tr>
					                         <th>${product.proid}</th>
					                         <th>${product.pname}</th>
					                         <th>${product.price}</th>
					                         <th>${product.inprice}</th>
					                         <th><fmt:formatDate pattern="yyyy-MM-dd" value="${product.prodate}"/></th>
					                         <th><fmt:formatDate pattern="yyyy-MM-dd" value="${product.reledate}"/></th>
					                         <th>${product.supname}</th>
					                         <th>${product.protype}</th>
					                         <th>${product.unit}</th>
					                         <th>${product.marks}</th>      
					                         <th>
					                            <button class="btn btn-primary btn-xs">
					                                  编辑<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
					                            </button>
					                            <button class="btn btn-primary btn-xs" aria-label="Left Align">
					                                删除<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					                            </button>
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
							<!-- 分页条信息 -->
							<div class="col-md-6">
								<nav aria-label="Page navigation">
								<ul class="pagination">
									<li><a href="${pageContext.request.contextPath }/staff/flatform/product/getlist?pn=1">首页</a></li>
									<c:if test="${pageInfo.hasPreviousPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/product/getlist?pn=${pageInfo.pageNum-1}"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
									</c:if>
				
				
									<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
										<c:if test="${page_Num == pageInfo.pageNum }">
											<li class="active"><a href="#">${page_Num }</a></li>
										</c:if>
										<c:if test="${page_Num != pageInfo.pageNum }">
											<li><a href="${pageContext.request.contextPath }/staff/flatform/product/getlist?pn=${page_Num }">${page_Num }</a></li>
										</c:if>
				
									</c:forEach>
									<c:if test="${pageInfo.hasNextPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/product/getlist?pn=${pageInfo.pageNum+1 }"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</c:if>
									<li><a href="${pageContext.request.contextPath }/staff/flatform/product/getlist?pn=${pageInfo.pages}">末页</a></li>
								</ul>
								</nav>
							</div>
						</div>
		
	                </div>
	</div>
</div>
<%@include file="common/footer.jsp"%>