/**
 * 
 */ //随机生成7位数销售订单号
 $(document).ready(function(){ 
	 var Num="";
     for(var i=0;i<7;i++){
         Num+=Math.floor(Math.random()*10);
     }
     document.getElementById("proid").value=Num;
	 });