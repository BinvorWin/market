/**
 * 增加商品退货订单js
 */
 $("#inid").change(function(){
		 var inid=$("#inid").val();
		$.ajax({
			type:'post',
			data:{"inid":inid},
			url:'/chaoshi/staff/flatform/ckretire/getckret?inid='+inid,
			dataType:'json',
			success:function(data){
				$("#proid").val(data.proid);
				$("#pname").val(data.pname);
				$("#num").val(data.num);
			},
			error:function(data){
                alert("该订单id不存在！");
            }
		});
	});
 $("#num").change(function(){
	 var inid=$("#inid").val();
	$.ajax({
		type:'post',
		data:{"inid":inid},
		url:'/chaoshi/staff/flatform/ckretire/getckret?inid='+inid,
		dataType:'json',
		success:function(data){
			var num=$("#num").val();
			if(num>data.num)
				{alert("当前进货订单数量为："+data.num+",请重新输入退货数量");
			document.getElementById("submit").disabled=true;}
			else
				document.getElementById("submit").disabled=false;
		},
	});
});