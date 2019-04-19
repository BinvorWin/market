<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" name="form" action="updatepro" onsubmit="return checkall()">

                      <span class="section">修改商品信息</span>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">商品id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proid" name="proid" class="form-control input-small input-sm "  value="${product.proid}"  type="text" readonly>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="pname" name="pname" class="form-control col-md-7 col-xs-5" value="${product.pname}"  type="text" onblur="check()"><span id="demo1"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >售价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="price" name="price" class="form-control col-md-7 col-xs-5" value="${product.price}"  type="text" onblur="ischeckNum()"><span id="demo2"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >进价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="inprice"  name="inprice" class="form-control col-md-7 col-xs-5" value="${product.inprice}"  type="text" onblur="ischeckinprice()">  <span id="demo3"></span>                      
                      </div>
                      	</div>
                     <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >生产日期<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="prodate"  name="prodate" class="form-control col-md-7 col-xs-5" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${product.prodate}"/>" type="date" >                        
                          </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >过期时间<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="reledate" name="reledate" class="form-control col-md-7 col-xs-5"  value="<fmt:formatDate pattern="yyyy-MM-dd" value="${product.reledate}"/>" type="date">
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
						<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
						<button type="submit" class="btn btn-primary text-center  col-md-offset-4 col-lg-offset-4 col-xl-offset-4" >修改	</button>							                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>
<script>
/*判断输入id是不是数字  */
function checkid()
{
	var num = document.getElementById('proid').value;
	if( num )
		{
		if( !isNaN( num ) )
			{
				document.getElementById("demo4").innerHTML=" ";
		return true;
		}else{
			document.getElementById("demo4").innerHTML="请输入正确的id！";
			document.getElementById('proid').value="";
			document.getElementById('proid').focus();
			return false;
			}
		}
else{
		document.getElementById("demo4").innerHTML="请输入商品售价！";
	document.getElementById('proid').focus();
	return false;
	}
}
/*  校验商品名称*/
function check(){
   if(form.pname.value==""){
    /*    alert("请输入商品名称！"); */
document.getElementById("demo1").innerHTML="请输入商品名称！";
return false;
}
else {
	document.getElementById("demo1").innerHTML=" ";
	return true
	}
}
/*判断输入的价格是不是数字  */
function ischeckNum()
{
	var num = document.getElementById('price').value;
	if( num )
		{
		if( !isNaN( num ) )
			{
				document.getElementById("demo2").innerHTML=" ";
		return true;
		}else{
			document.getElementById("demo2").innerHTML="请输入正确的价格！";
			document.getElementById('price').value="";
			document.getElementById('price').focus();
			return false;
			}
		}
else{
		document.getElementById("demo2").innerHTML="请输入商品售价！";
	document.getElementById('price').focus();
	return false;
	}
}
function ischeckinprice()
{
	var num = document.getElementById('inprice').value;
	if( num )
		{
		if( !isNaN( num ) )
			{
				document.getElementById("demo3").innerHTML=" ";
				return true;
		return true;
		}else{
			document.getElementById("demo3").innerHTML="请输入正确的价格！";
			document.getElementById('inprice').value="";
			document.getElementById('inprice').focus();
			return false;
			}
		}
else{
		document.getElementById("demo3").innerHTML="请输入商品售价！";
	document.getElementById('inprice').focus();
	return false;
	}
}
/* 校验整个表单 */
function checkall(){
	         var name = check();  
	         var price = ischeckNum();  
	         var inprice = ischeckinprice();  
	         
	         if(price&&name&&inprice){  
				 alert("修改成功"); 
	             return true;
	         }else{  
		 			alert("修改失败，请重新填写数据");
	             return false;
	 			
	         }  
}
</script>
