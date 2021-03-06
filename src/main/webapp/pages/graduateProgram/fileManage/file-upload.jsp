<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>文件上传</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../../../css/font.css">
    <link rel="stylesheet" href="../../../css/xadmin.css">
    <script type="text/javascript" src="../../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../../js/xadmin.js"></script>
    <style>
        a{
            color:#01AAED
        }
    </style>
</head>

<body>
<%-- qlq引入的公共的JSP --%>
<%@include file="/tag.jsp"%>
<!--主体-->
<div class="x-body">
    <table class="layui-table">
        <thead>
        <tr>
            <th>文件名称</th>
            <th>上传状态</th>
            <th>上传时间</th>
            <th>下载查看</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>文件1</td>
            <td>已上传</td>
            <td>2015-12-10</td>
            <td><a href="">下载</a></td>
        </tr>
        <tr>
            <td>文件1</td>
            <td><a href="">上传</a></td>
            <td>2015-12-10</td>
            <td><a href="">下载</a></td>
        </tr>
        </tbody>
    </table>
</div>

</body>
</html>