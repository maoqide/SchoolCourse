<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		
		<title>资源显示</title>
		<link rel="stylesheet" href="/infocrawler/static/css/my.css">
		<link rel="stylesheet" href="/infocrawler/static/bootstrap-3.3.6/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="/infocrawler/static/font-awesome/font-awesome.css" />
		<link rel="stylesheet" href="/infocrawler/static/css/personInfo.css">
		<link rel="stylesheet" href="/infocrawler/static/css/tab.css">
		<link rel="stylesheet" href="/infocrawler/static/css/index.css">
		<script type="application/javascript" src="/infocrawler/static/jquery-1.12.3.min.js"></script>
		<script type="application/javascript" src="/infocrawler/static/bootstrap-3.3.6/js/bootstrap.min.js"></script>
		<script>
			$(document).ready(function() {
				init();
			});
			function init(){
				var usertype = "<%=session.getAttribute("usertype")%>";
				if(usertype == "T"){
					$("#onlineExam").css("display","none");
					$("#downRes").css("display","none");
					$("#upWork").css("display","none");
				}else{
					$("#upRes").css("display","none");
				}
				var msgcount = "<%=session.getAttribute("msgcount")%>";
				if(msgcount == ""){
					$("#msgcount").css("display","none");
				}
			}
			</script>
</head>
<body>
<div>
		<nav class="navbar navbar-default navbar-fixed-top" id="background-img">
		  <div class="container-fluid col-md-10 col-md-offset-1">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">生物信息学</a>
		    </div>

		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav" >
		        <li><a href="/infocrawler/topage?pagename=index">主页<span class="sr-only">(current)</span></a></li>
		        <li><a href="/infocrawler/topage?pagename=about">课程简介</a></li>
		        <li><a href="/infocrawler/topage?pagename=catlog">教学大纲</a></li>
		        <li id="onlineExam"><a href="/infocrawler/initExamPage">在线考试</a></li>
		        <li id="upRes"><a href="/infocrawler/oneTeacherShow">上传资源</a>
		        <li id="downRes"><a href="/infocrawler/downAllRources">资源下载</a></li>
		        <li><a href="/infocrawler/allQuestions">在线问答</a></li>
		        <li><a href="/infocrawler/allHomeworks">作业中心</a></li>
		      </ul>
		      
  			  <ul class="nav navbar-nav  navbar-right" style="margin-right:20px;" id="msgcount">
		      		<li  style="padding:20px 5px;"><span class="glyphicon glyphicon-envelope"></span></li>
		      		<li  style="padding:18px 8px;"><span class="badge" style="background-color: red"><a href="/infocrawler/showAllNoScanExams"><%=session.getAttribute("msgcount")%></a></span></li>
		      </ul>
		      
 
		      <ul class="nav navbar-nav navbar-right" id="right-person-info">
		        <li class="dropdown" id="right-person-info-li">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
					<img src="/infocrawler/static/img/pic.jpg"/>
					<span id="user-nickname"><%=(String) session.getAttribute("username")%></span>
		          	<span class="caret"></span>	
		          </a>

		          <!-- 这里需要自己计算高度 -->
		          <ul class="dropdown-menu" id="dropdown-info">
		            <li id="not-last-li">
		            	<a href="/infocrawler/topage?pagename=editInfo">
		            		<span class="glyphicon glyphicon-user"></span>编辑资料
		            	</a>
		            </li>
		             <li>
		            	<a href="/infocrawler/logout">
		            		<span class="glyphicon glyphicon-off"></span>退出
		            	</a>
		            </li>
		          </ul>
		        </li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>




			<div class="container" style="margin-top:80px;">
				<div id="fm-main">
					<form class="col-md-12"> 
						<div class="col-md-12" id="pianke-content-detail" style=
						"padding: 0;border-bottom:1px solid #ddd;margin-top:10px;">
							<div class="col-md-12" style="font-size:24px;">
								<p class="col-md-12">
									 <i class="fa fa-quote-left"></i>
										<strong>资源库</strong>
								</p>
							</div>
						</div>


					<div>
						<table class="table table-condensed">
						   <thead>
						      <tr>
						         <th>资源名称</th>
						         <th>上传者</th>
						         <th>资源说明</th>
						         <th style="text-align: center">下载次数</th>
						         <th style="text-align: center">下载</th>
						      </tr>
						   </thead>
						   <tbody>
						   		
						   		<c:forEach var="item" items="${allreso }">
									 <tr>
								         <td>${item.urlname}</td>
								         <td>${item.teachername}</td>
								         <td>${item.description}</td>
								         <td style="text-align: center">${item.downloadnum}</td>
								         <td style="text-align: center">
								         	<a href="/infocrawler/download?filename=${item.urlname}&downloadnum=${item.downloadnum}&resoid=${item.id}">
								         		<span class="glyphicon glyphicon-save"></span>
								         	</a>
								         </td>
						     		 </tr>
								
						  	  </c:forEach>	
						   
						   </tbody>
						</table>
					</div>
					

					</form>
				</div>
			</div>

</body>
</html>
