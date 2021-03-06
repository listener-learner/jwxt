<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/6
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教师信息统计</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../../css/font.css">
    <link rel="stylesheet" href="../../css/xadmin.css">
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../js/xadmin.js"></script>

    <%--公共标签--%>
    <%@include file="/tag.jsp"%>

    <%--ll nameAndId的js--%>
    <script type="text/javascript" src="${baseurl}/js/baseInfo/commonNameAndId.js"></script>
</head>
<body>

<div class="x-body">
    <div class="layui-row  x-so">
        <div class="layui-input-inline">
            <select name="contrller" id="distinctType" class="layui-form-select">
                <option value="2">学位区分</option>
                <option value="1">职称区分</option><!--讲师、副教授、教授、研究员等等。-->
            </select>
        </div>
        <button class="layui-btn" onclick="distinctType()"><i class="layui-icon">&#xe615;</i></button>
    </div>

    <div id="main" style="width: 100%;height:400px;"></div>
</div>
<script src="../../lib/echarts/echarts.min.js" charset="utf-8"></script>
<script>

    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    distinctType();
    function showTable() {
        option = {
            color: ['#003366', '#006699', '#4cabce', '#e5323e'],
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            legend: legendContent
            , toolbox: {
                show: true,
                orient: 'vertical',
                left: 'right',
                top: 'center',
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            calculable: true,
            xAxis: [
                {
                    type: 'category',
                    axisTick: {show: false},
                    data: ['2012', '2013', '2014', '2015', '2016']
                }
            ],
            yAxis: [{type: 'value'}],
            series: seriesContent
        };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    }
    function distinctType() {
        myChart.clear();
        if ($("#distinctType").val() == 1) {
            legendContent = {data: ['讲师', '副教授', '教授', '研究员']};
            seriesContent = [{
                name: '讲师',
                type: 'bar',
                barGap: 0,
                data: [320, 332, 301, 334, 390]
            }, {
                name: '副教授',
                type: 'bar',
                data: [220, 182, 191, 234, 290]
            }, {
                name: '教授',
                type: 'bar',
                data: [150, 232, 201, 154, 190]
            }, {
                name: '研究员',
                type: 'bar',
                data: [98, 77, 101, 99, 40]
            }
            ];
        } else {
            legendContent = {data: ['学士', '硕士', '博士']};
            seriesContent = [{
                name: '学士',
                type: 'bar',
                barGap: 0,
                data: [320, 332, 301, 334, 390]
            }, {
                name: '硕士',
                type: 'bar',
                data: [220, 182, 191, 234, 290]
            }, {
                name: '博士',
                type: 'bar',
                data: [150, 232, 201, 154, 190]
            }
            ];
        }
        showTable();
    }
</script>
</body>
</html>