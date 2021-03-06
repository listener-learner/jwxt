<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>教研室选择课题-详细信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../../../css/font.css">
    <link rel="stylesheet" href="../../../lib/bootstrap/bootstrap.min.css">
    <script type="text/javascript" src="../../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../../js/xadmin.js"></script>
</head>

<body>
<%-- qlq引入的公共的JSP --%>
<%@include file="/tag.jsp"%>
<div class="x-body" style="margin:20px auto 50px auto; width:70%;">
    <!--通过是否确认，。确认则显示，选择的学生信息。显示相关内容-->
    <table class="table table-bordered">
        <caption><h3>选择毕设学生信息</h3></caption>
        <tbody>
        <tr>
            <td>课题名称</td>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td>课题类型</td>
            <td></td>
            <td>题目类别</td>
            <td></td>
        </tr>
        <tr>
            <td>课题来源</td>
            <td></td>
            <td>指导教师</td>
            <td></td>
        </tr>
        <tr>
            <td>专业</td>
            <td></td>
            <td>申请人数</td>
            <td></td>
        </tr>
        <tr style="background-color: #f2f2f2;">
            <td>选择学生</td>
            <td>班级</td>
            <td>性别</td>
            <td>志愿</td>
        </tr>
        <tr>
            <td>网名</td>
            <td>3</td>
            <td>男</td>
            <td>第一志愿</td>
        </tr>
        </tbody>
    </table>
</div>

</body>
</html>