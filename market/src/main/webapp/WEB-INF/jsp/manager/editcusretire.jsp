<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="update" onsubmit="return checkall()">

                      <span class="section">修改退货信息</span>
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">订单id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="saleid" name="saleid" class="form-control input-small input-sm " value="${cusretire.saleid}"  type="text" onblur="checksaleid()"><span id="demo1" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">商品id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proid" name="proid" class="form-control input-small input-sm "  value="${cusretire.proid}"  type="text" onblur="checkproid()"><span id="demo3" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="pname" name="pname" class="form-control col-md-7 col-xs-5" value="${cusretire.pname}" onblur="checkname()" type="text" ><span id="demo2" style="color: red;"></span>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >售价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="num" name="num" class="form-control col-md-7 col-xs-5" value="${cusretire.price}"  type="text" onblur="checknum()"><span id="demo4" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >数量 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="num" name="num" class="form-control col-md-7 col-xs-5" value="${cusretire.num}"  type="text" onblur="checknum()"><span id="demo4" style="color: red;"></span>
                        </div>
                      </div>
                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >总价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="num" name="num" class="form-control col-md-7 col-xs-5" value="${cusretire.total}"  type="text" onblur="checknum()"><span id="demo4" style="color: red;"></span>
                        </div>
                      </div>
                     <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >售货日期<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="indate"  name="indate" class="form-control col-md-7 col-xs-5" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cusretire.indate}"/>" type="date" >                        
                          </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >退货日期<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="retdate"  name="retdate" class="form-control col-md-7 col-xs-5" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cusretire.retdate}"/>" type="date" >                        
                          </div>
                      </div>
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >备注<span ></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="marks" name="marks" class="form-control col-md-7 col-xs-5" value="${cusretire.marks}"  type="text" >
                        </div>
                        </div>
						<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
						<button type="submit" class="btn btn-primary text-center  col-md-offset-4 col-lg-offset-4col-xl-offset-4" >修改</button>								                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>
<script>
/*判断输入id是不是数字  */
function checksaleid()
{
	var num = document.getElementById('saleid').value;
	if( num )
		{
		if( !isNaN( num ) )
			{
				document.getElementById("demo1").innerHTML=" ";
		return true;
		}else{
			document.getElementById("demo1").innerHTML="请输入正确的订单id！";
			document.getElementById('saleid').value="";
			document.getElementById('saleid').focus();
			return false;
			}
		}
else{
		document.getElementById("demo1").innerHTML="请输入订单id！";
	document.getElementById('saleid').focus();
	return false;
	}
}
/*  校验商品名称*/
function checkname(){
	var name=document.getElementById('pname').value;
   	if(name){
	document.getElementById("demo2").innerHTML=" ";
	return true;
}else{
	document.getElementById("demo2").innerHTML="请输入商品名称！";
	document.getElementById('pname').focus();
	return false;
}
}


/*判断输入的id是不是数字  */
function checkproid()
{
	var num = document.getElementById('proid').value;
	if( num )
		{
		if( !isNaN( num ) )
			{
				document.getElementById("demo3").innerHTML=" ";
		return true;
		}else{
			document.getElementById("demo3").innerHTML="请输入正确的商品id！";
			document.getElementById('proid').value="";
			document.getElementById('proid').focus();
			return false;
			}
		}
else{
		document.getElementById("demo3").innerHTML="请输入商品id！";
	document.getElementById('proid').focus();
	return false;
	}
}
function checknum()
{
	var num = document.getElementById('num').value;
	if( num )
		{
		if( !isNaN( num ) )
			{
				document.getElementById("demo4").innerHTML=" ";
		return true;
		}else{
			document.getElementById("demo4").innerHTML="请输入正确的商品数量！";
			document.getElementById('num').value="";
			document.getElementById('num').focus();
			return false;
			}
		}
else{
		document.getElementById("demo4").innerHTML="请输入商品数量！";
	document.getElementById('num').focus();
	return false;
	}
}
/* 校验整个表单 */
function checkall(){
			 var saleid=checksaleid();
	         var name = checkname();  
	         var proid=checkproid(); 
	         var num=checknum(); 
	         
	         if(saleid&&name&&proid&&num){  
				 alert("添加成功"); 
	             return true;
	         }else{  
		 			alert("添加失败，请重新填写数据");
	             return false;
	 			
	         }  
}
</script>