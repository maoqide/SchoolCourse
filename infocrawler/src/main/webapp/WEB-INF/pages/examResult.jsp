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
				if("${positivescore}"!="1"){
					$("#positivescore1").css('display', 'none');
					$("#positivescore2").css('display', 'none');
				}
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
					<form class="col-md-12" action="/infocrawler/showOneStudentAllExams" method="post"> 
						<div class="col-md-12" id="pianke-content-detail" style=
						"padding: 0;border-bottom:1px solid #ddd;margin-top:10px;">
							<div class="col-md-12" style="font-size:24px;">
								<p class="col-md-12">
									 <i class="fa fa-quote-left"></i>
										<strong>${msg}</strong>
								</p>
							</div>
						</div>
						<!--评论测试-->
					 <div class="col-md-12" style="margin:10px;border-bottom:1px dashed #ddd;" >
							<h3><strong>客观题：</strong></h3>
							<div class="col-md-12" style="margin-left:8px;">
								<ul class="list-group"  id="detail-info" >
								
								
									<c:forEach var="item" items="${chooseList }" varStatus="status">
									
									
									<div style="margin-top:10px;padding: 10px 0;">
										<li class="list-group-item" style="padding:0;font-size:18px;">第${status.index + 1}题:${item.content}<br/>
										<div class="radio-inline col-md-3">
											
										    <label>A:</label>
										    <span class="text-info">${item.result1}</span>
										</div>
										<div class="radio-inline col-md-3">
										    <label>B:</label>
										    <span class="text-info">${item.result2}</span>
										</div>
										<div class="radio-inline col-md-3">
	  										
										    <label>C:</label>
										    <span class="text-info">${item.result3}</span>
										</div>
										<div class="radio-inline ">
	  										
										    <label>D:</label>
										    <span class="text-info">${item.result4}</span>
										</div>
										<div>您的答案是<span style="color:blue">${item.tempresult}</span>。正确答案是<span style="color:red">${item.result}</span></div>
										</li>
									</div>
									
									
						  		  </c:forEach>	
							
								</ul>
							</div>
						</div> 

						<div class="col-md-12" style="margin-top:10px;border-bottom:1px solid #ddd;" >
							<h3><strong>主观题：</strong></h3>
							<div class="col-md-12" style="margin-left:8px;">					
									<div class="col-md-12"  style="margin-top:10px;padding:0;font-size:18px;">
									第一题：${positive1.content}
									<div class="col-md-12" >
										<textarea class="col-md-11" name="positive1" rows="5">${exam.positive1result}</textarea>
									</div>
									<div id="positivescore1">您此题的得分为<span style="color:red">${exam.positive1score}</span>分</div>
									</div>
						
									<div class="col-md-12" style="margin-top:10px;padding:0;font-size:18px;">
									第二题：${positive2.content}
									<div class="col-md-12">
										<textarea class="col-md-11" name="positive2" rows="5">${exam.positive2result}</textarea>
									</div>
									<div id="positivescore2">您此题的得分为<span style="color:red">${exam.positive1score}</span>分</div>
									</div>   
							</div>
							<div class="center-block col-md-12" style="margin:20px 0;">
								 	<button type="submit" class="btn  btn-primary col-md-3 col-md-offset-4">确定</button>
								</div>
						</div> 
					
					</form>
				</div>
			</div>
	
	
</body>
</html>
