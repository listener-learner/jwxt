<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>太原科技大学-教研室管理系统后台登录</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
	<link rel="stylesheet" href="./css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>

</head>
<%-- qlq引入的公共的JSP --%>
<%@include file="/tag.jsp"%>
<body class="login-bg">
    
    <div class="login" style="margin-top: 60px;">
        <div class="message">太原科技大学---教研室管理系统</div>
        <div id="darkbannerwrap"></div>
        
        <form method="post" class="layui-form" >
            <input name="" placeholder="请输入用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="" lay-verify="required" placeholder="请输入密码"  type="password" class="layui-input">
            <hr class="hr15">
            <select name="city" lay-verify="">
			  <option value="">请选择用户类型</option>
			  <option value="010">教研室主任</option>
			  <option value="011">教学院长</option>
			  <option value="012">教学秘书</option>
			  <option value="013">教师</option>
			  <option value="014">学生</option>
			</select>
			<hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>

    <script>
        $(function  () {
            layui.use('form', function(){
              var form = layui.form;
              // layer.msg('玩命卖萌中', function(){
              //   //关闭后的操作
              //   });
              //监听提交
              form.on('submit(login)', function(data){
//              layer.msg(JSON.stringify(data.field),function(){
                    location.href='index.jsp'
//              });
                return false;
              });
            });
        })
    </script>
</body>
</html>