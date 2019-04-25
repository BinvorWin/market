<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<div id="dy"  style="height: 600px;width: 1100px;margin-top: 50px;margin-left:20px;">
    		<div id="mainChart" style="border: 1px solid #438FB9; width:100%; height:45%;"></div>
	   </div>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>
<script type="text/javascript">
    //使用ajax加载数据 
    $.ajax({
        method:'post',
        url:'${pageContext.request.contextPath}/manager/flatform/sale/echartsData',
        dataType:'json',
        success:function(data){
            initChat(data);
        }
    }); 
    function initChat(data){
    var myChart = echarts.init(document.getElementById('mainChart'));
        option = {
                title : {
                    text: '销量比例统计',
                    subtext: '内部数据',
                    x:'center'
                },
                tooltip : {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    left: 'left',
                    data: data
                },
                series : [
                    {
                        name: '销量',
                        type: 'pie',
                        radius : '55%',
                        center: ['50%', '60%'],
                        data:data,
                        itemStyle: {
                            emphasis: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }       
                    }
                ]
            },
                    myChart.setOption(option);
    };
</script>
<script src="${pageContext.request.contextPath }/statics/js/echarts.min.js"></script>