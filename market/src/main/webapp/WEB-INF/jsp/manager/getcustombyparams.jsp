<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>    
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>查询客戶信息结果 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<!-- 按钮 -->
					<div class="row">
						<div class="mid_center">
		                </div>
					</div>
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					        <tr>
					        	 <th>客户id</th>
					        	 <th>客户姓名</th>
					        	 <th>客户电话</th>
					        	 <th>负责人</th>
					        	 <th>地址</th>
					        	 <th>邮箱</th>
					        	 <th>操作</th>
					        </tr>
					        	 
					        <c:forEach items="${pageInfo.list}" var="custom">
					        	<tr>
					                         <th>${custom.cusid}</th>
					                         <th>${custom.cusname}</th>
					                         <th>${custom.tel}</th>
					                         <th>${custom.person}</th>
					                         <th>${custom.address}</th>
					                         <th>${custom.emali}</th>
					                         <th>
												<a href="${pageContext.request.contextPath }/manager/flatform/custom/toupdate?cusid=${custom.cusid}" class="btn btn-primary btn-xs">修改</a>
					                         <a onclick="del(${custom.cusid})"  class= "btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
					                         </th>
					          	</tr>
					         </c:forEach>
	                    </table>
	                  </div>
	                  </div>
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6"><%-- 当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
								页, --%>总 ${pageInfo.total } 条记录</div>
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
			window.location.href="${pageContext.request.contextPath }/manager/flatform/custom/delete?cusid="+id;
			alert("删除成功");
	} else {
		// 取消时做的操作
		alert("删除失败");
	}
}
	/*判断输入id是不是数字  */
	function checkid()
	{
		var num = document.getElementById('cusid').value;
		if( num )
			{
			if( !isNaN( num ) )
				{
					document.getElementById("demo1").innerHTML=" ";
			return true;
			}else{
				document.getElementById("demo1").innerHTML="请输入正确的id！";
				document.getElementById('cusid').value="";
				document.getElementById('cusid').focus();
				return false;
				}
			}
	else{
			document.getElementById("demo1").innerHTML="请输入正确的id！";
		document.getElementById('cusid').focus();
		return false;
		}
	}
	/*  校验商品名称*/
	function check(){
		var name = document.getElementById('cusname').value;
	   if(name==""){
	    /*    alert("请输入商品名称！"); */
		document.getElementById("demo2").innerHTML="请输入客户名称！";
		return false;
	}
	else {
		document.getElementById("demo2").innerHTML=" ";
		return true
		}
	}
	/* 验证电话号码 */
	function checkTel()
		{
		   var tel= document.getElementById('tel').value;
		   if(tel){
		   var mobile = /^1[3|5|8]\d{9}$/ , phone = /^0\d{2,3}-?\d{7,8}$/;
		   return mobile.test(tel) || phone.test(tel);
		   }
		   else{
			   document.getElementById("demo3").innerHTML="请输入客户有效电话！";
				return false;
		   }
		}
	/* 验证邮箱 */
	 function test()
       {
           var temp = document.getElementById("emali");
             var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
             if(!myreg.test(temp))
             {
            	 document.getElementById("demo3").innerHTML="请输入有效的客户邮箱！";
                 myreg.focus();
                 return false;
            }
         }
</script>