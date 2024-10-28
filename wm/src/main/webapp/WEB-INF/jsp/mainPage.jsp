<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!--//{pageContext.request.contextPath}作用是取出部署应用程序的名字-->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>海量值班管理系统</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/bootstrap-table.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/mainPage.css">
</head>
<body>

<!-- 导航栏 -->
<div id="navBar">
    <!-- 此处加载顶部导航栏 -->
    <!-- 导航栏 -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <!-- 导航栏标题 -->
            <div class="navbar-header">
                <a href="javascript:void(0)" class="navbar-brand home">海量值班管理系统</a>
            </div>

            <!-- 导航栏下拉菜单；用户信息与注销登陆 -->
            <div>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle"
                           data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>
                            <span>欢迎&nbsp;</span> <span id="nav_userName">用户名:${sessionScope.userName}</span>
                            <!--小三角-->
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-通过session获取的name的值-->
                            <shiro:hasRole name="commonsAdmin">
                                <li>
                                    <a href="#" id="editInfo"> <span
                                            class="glyphicon glyphicon-pencil"></span> &nbsp;&nbsp;修改个人信息</a></li>
                            </shiro:hasRole>
                            <li>
                                <a href="javascript:void(0)" id="signOut"> <span
                                        class="glyphicon glyphicon-off"></span> &nbsp;&nbsp;注销登录
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="container-fluid" style="padding-left: 0px;">
    <div class="row">
        <!-- 左侧导航栏 -->
        <div id="sideBar" class="col-md-2 col-sm-3">
            <!--  此处加载左侧导航栏 -->
            <!-- 左侧导航栏  -->
            <!--依照accordion为parent-->
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">

                    <div id="collapse1" class="panel-collapse collapse collapseBody">
                        <div class="panel-body">
                            <ul class="list-group">
                                <!--若为普通管理员-->
                                <shiro:hasRole name="commonsAdmin">
                                  <li class="list-group-item">
                                        <a href="javascript:void(0)" id="" class="menu_item"
                                           name="pagecomponent/repositoryAdminManagement.jsp">人员信息</a>
                                    </li>
                                </shiro:hasRole>

                        </div>
                    </div>
                </div>
                <div class="panel panel-default">

                    <div id="collapse2" class="panel-collapse collapse collapseBody in">
                        <div class="panel-body">
                            <shiro:hasRole name="systemAdmin">

                            </shiro:hasRole>
                            <shiro:hasRole name="commonsAdmin">
<!--                                 <ul class="list-group"> -->
<!--                                     <li class="list-group-item"> -->
<!--                                           <a href="javascript:void(0)" id="" class="menu_item" -->
<!--                                            name="pagecomponent/repositoryManagement.jsp">值班信息</a> -->
<!--                                     </li> -->
                                    
<!--                                       <li class="list-group-item"> -->
<!--                                     <a href="javascript:void(0)" id="" class="menu_item" -->
<!--                                        name="pagecomponent/passwordModification.jsp">更改密码</a> -->
<!--                                 </li> -->
                                 
                                </ul>
                                
                            </shiro:hasRole>
                        </div>
                    </div>
                </div>
                <shiro:hasRole name="systemAdmin">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="#collapse3" data-toggle="collapse" data-parent="#accordion"
                                   class="parentMenuTitle collapseHead">人员管理</a>
                                <div class="pull-right	">
                                    <span class="caret"></span>
                                </div>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse collapseBody">
                            <div class="panel-body">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <a href="javascript:void(0)" id="" class="menu_item"
                                           name="pagecomponent/repositoryAdminManagement.jsp">人员信息</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </shiro:hasRole>
                <shiro:hasRole name="systemAdmin">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="#collapse4" data-toggle="collapse" data-parent="#accordion"
                                   class="parentMenuTitle collapseHead">值班数据</a>
                                <div class="pull-right	">
                                    <span class="caret"></span>
                                </div>
                            </h4>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse collapseBody">
                            <div class="panel-body">
                                <ul class="list-group">

                                    <li class="list-group-item">
                                        <a href="javascript:void(0)" id="" class="menu_item"
                                           name="pagecomponent/repositoryManagement.jsp">值班信息管理</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </shiro:hasRole>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse5" data-toggle="collapse" data-parent="#accordion"
                               class="parentMenuTitle collapseHead">系统维护</a>
                            <div class="pull-right	"><span class="caret"></span></div>
                        </h4>
                    </div>
                    <div id="collapse5" class="panel-collapse collapse collapseBody">
                        <div class="panel-body">
                            <ul class="list-group">
                             <shiro:hasRole name="commonsAdmin">
                                  <li class="list-group-item">
                                          <a href="javascript:void(0)" id="" class="menu_item"
                                           name="pagecomponent/repositoryManagement.jsp">值班信息</a>
                                    </li>
                                    
                                      <li class="list-group-item">
                                    <a href="javascript:void(0)" id="" class="menu_item"
                                       name="pagecomponent/passwordModification.jsp">更改密码</a>
                                </li>
                                </shiro:hasRole>
                                <shiro:hasRole name="systemAdmin">
                                 <li class="list-group-item">
                                    <a href="javascript:void(0)" id="" class="menu_item"
                                       name="pagecomponent/passwordModification.jsp">更改密码</a>
                                </li>
                                    <li class="list-group-item">
                                        <a href="javascript:void(0)" id=""
                                           class="menu_item" name="pagecomponent/userOperationRecorderManagement.html">系统日志</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href="javascript:void(0)" id=""
                                           class="menu_item" name="pagecomponent/accessRecordManagement.html">登陆日志</a>
                                    </li>
                                </shiro:hasRole>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 面板区域 -->
        <div id="panel" class="col-md-10 col-sm-9">
          
        </div>
    </div>
</div>

<span id="requestPrefix" class="hide">${sessionScope.requestPrefix}</span>

<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/bootstrap-table.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery.md5.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/mainPage.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
</body>
</html>