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
		            		<span class="glyphicon glyphicon-user"></span><span class="badge">5</span>编辑资料
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
				<h2>简介</h2>
<p>生物信息学（Bioinformatics）是在生命科学的研究中，以计算机为工具对生物信息进行储存、检索和分析的科学。它是当今生命科学和自然科学

的重大前沿领域之一，同时也将是21世纪自然科学的核心领域之一。其研究重点主要体现在基因组学（Genomics）和蛋白质组学（Proteomics）两

方面，具体说就是从核酸和蛋白质序列出发，分析序列中表达的结构功能的生物信息。</p>





<h3>定义</h3>
<p>一.生物信息学是一门收集、分析遗传数据以及分发给研究机构的新学科（Bioinformatics is a new subject of genetic data 

collection,analysis and dissemination to the research community）。（林华安，Dr. Hwa A. Lim，1987)
二.生物信息学特指数据库类的工作，包括持久稳固的在一个稳定的地方提供对数据的支持（Bioinformatics refers to database-like 

activities,involving persistent sets of data that are maintained in a consistent state over essentially indefinite periods of 

time）。（林华安，Dr. Hwa A. Lim，1994)
三.生物信息学是在大分子方面的概念型的生物学，并且使用了信息学的技术，这包括了从应用数学、计算机科学以及统计学等学科衍生而来各种

方法，并以此在大尺度上来理解和组织与生物大分子相关的信息。（Luscombe,2001)
具体而言，生物信息学作为一门新的学科领域，它是把基因组DNA序列信息分析作为源头，在获得蛋白质编码区的信息后进行蛋白质空间结构模拟

和预测，然后依据特定蛋白质的功能进行必要的药物设计。基因组信息学，蛋白质空间结构模拟以及药物设计构成了生物信息学的3个重要组成部

分。从生物信息学研究的具体内容上看，生物信息学应包括这3个主要部分：⑴新算法和统计学方法研究；⑵各类数据的分析和解释；⑶研制有效

利用和管理数据新工具。
生物信息学是一门利用计算机技术研究生物系统之规律的学科。
生物信息学基本上只是分子生物学与信息技术（尤其是因特网技术）的结合体。生物信息学的研究材料和结果就是各种各样的生物学数据，其研究

工具是计算机，研究方法包括对生物学数据的搜索（收集和筛选）、处理（编辑、整理、管理和显示）及利用（计算、模拟）。
1990年代以来，伴随着各种基因组测序计划的展开和分子结构测定技术的突破和Internet的普及，数以百计的生物学数据库如雨后春笋般迅速出现

和成长。对生物信息学工作者提出了严峻的挑战：数以亿计的ACGT序列中包涵着什么信息？基因组中的这些信息怎样控制有机体的发育？基因组本

身又是怎样进化的？
生物信息学的另一个挑战是从蛋白质的氨基酸序列预测蛋白质结构。这个难题已困扰理论生物学家达半个多世纪，如今找到问题答案要求正变得日

益迫切。诺贝尔奖获得者W. Gilbert在1991年曾经指出：“传统生物学解决问题的方式是实验的。现在，基于全部基因都将知晓，并以电子可操作

的方式驻留在数据库中，新的生物学研究模式的出发点应是理论的。一个科学家将从理论推测出发，然后再回到实验中去，追踪或验证这些理论假

设”。
生物信息学的主要研究方向：基因组学 - 蛋白质组学 - 系统生物学 - 比较基因组学，1989年在美国举办生物化学系统论与生物数学的计算机模

型国际会议，生物信息学发展到了计算生物学、计算系统生物学的时代。
姑且不去引用生物信息学冗长的定义，以通俗的语言阐述其核心应用即是：随着包括人类基因组计划在内的生物基因组测序工程的里程碑式的进展

，由此产生的包括生物体生老病死的生物数据以前所未有的速度递增，已达到每14个月翻一番的速度。同时随着互联网的普及，数以百计的生物学

数据库如雨后春笋般迅速出现和成长。然而这些仅仅是原始生物信息的获取，是生物信息学产业发展的初级阶段，这一阶段的生物信息学企业大都

以出售生物数据库为生。以人类基因组测序而闻名的塞莱拉公司即是这一阶段的成功代表。
生物信息学产业的高级阶段体现于此，人类从此进入了以生物信息学为中心的后基因组时代。结合生物信息学的新药创新工程即是这一阶段的典型

应用。</p>





<h3>经历阶段</h3>
<p>前基因组时代（20世纪90年代前） 这一阶段主要是各种序列比较算法的建立、生物数据库的建立、检索工具的开发以及DNA和蛋白质序列分析等。
基因组时代（20世纪90年代后至2001年） 这一阶段主要是大规模的基因组测序，基因识别和发现，网络数据库系统地建立和交互界面工具的开发

等。
后基因组时代（2001至今） 随着人类基因组测序工作的完成，各种模式生物基因组测序的完成，生物科学的发展已经进入了后基因组时代，基因

组学研究的重心由基因组的结构向基因的功能转移。这种转移的一个重要标志是产生了功能基因组学，而基因组学的前期工作相应地被称为结构基

因组学。</p>





<h3>发展简介</h3>
<p>生物信息学是建立在分子生物学的基础上的，因此，要了解生物信息学，就必须先对分子生物学的发展有一个简单的了解。研究生物细胞的生物大

分子的结构与功能很早就已经开始，1866年孟德尔从实验上提出了假设：遗传因子是以生物成分存在，1871年Miescher从死的白细胞核中分离出脱

氧核糖核酸（DNA），在Avery和McCarty于1944年证明了DNA是生命器官的遗传物质以前，人们仍然认为染色体蛋白质携带基因，而DNA是一个次要

的角色。1944年Chargaff发现了著名的Chargaff规律，即DNA中鸟嘌呤的量与胞嘧定的量总是相等，腺嘌呤与胸腺嘧啶的量相等。与此同时，

Wilkins与Franklin用X射线衍射技术测定了DNA纤维的结构。1953年James Watson 和FrancisCrick在Nature杂志上推测出DNA的三维结构（双螺旋

）。DNA以磷酸糖链形成发双股螺旋，脱氧核糖上的碱基按Chargaff规律构成双股磷酸糖链之间的碱基对。这个模型表明DNA具有自身互补的结构，

根据碱基对原则，DNA中贮存的遗传信息可以精确地进行复制。他们的理论奠定了分子生物学的基础。DNA双螺旋模型已经预示出了DNA复制的规则

，Kornberg于1956年从大肠杆菌（E.coli）中分离出DNA聚合酶I（DNA polymerase I），能使4种dNTP连接成DNA。DNA的复制需要一个DNA作为模板

。Meselson与Stahl(1958）用实验方法证明了DNA复制是一种半保留复制。Crick于1954年提出了遗传信息传递的规律，DNA是合成RNA的模板，RNA

又是合成蛋白质的模板，称之为中心法则（Central dogma），这一中心法则对以后分子生物学和生物信息学的发展都起到了极其重要的指导作用

。经过Nirenberg和Matthai(1963）的努力研究，编码20氨基酸的遗传密码得到了破译。限制性内切酶的发现和重组DNA的克隆（clone）奠定了基

因工程的技术基础。正是由于分子生物学的研究对生命科学的发展有巨大的推动作用，生物信息学的出现也就成了一种必然。2001年2月，人类基

因组工程测序的完成，使生物信息学走向了一个高潮。由于DNA自动测序技术的快速发展，DNA数据库中的核酸序列公共数据量以每天106bp速度增

长，生物信息迅速地膨胀成数据的海洋。毫无疑问，我们正从一个积累数据向解释数据的时代转变，数据量的巨大积累往往蕴含着潜在突破性发现

的可能，"生物信息学"正是从这一前提产生的交叉学科。粗略地说，该领域的核心内容是研究如何通过对DNA序列的统计计算分析，更加深入地理

解DNA序列，结构，演化及其与生物功能之间的关系，其研究课题涉及到分子生物学，分子演化及结构生物学，统计学及计算机科学等许多领域。

生物信息学是内涵非常丰富的学科，其核心是基因组信息学，包括基因组信息的获取，处理，存储，分配和解释。基因组信息学的关键是"读懂"基

因组的核苷酸顺序，即全部基因在染色体上的确切位置以及各DNA片段的功能；同时在发现了新基因信息之后进行蛋白质空间结构模拟和预测，然

后依据特定蛋白质的功能进行药物设计。了解基因表达的调控机理也是生物信息学的重要内容，根据生物分子在基因调控中的作用，描述人类疾病

的诊断，治疗内在规律。它的研究目标是揭示"基因组信息结构的复杂性及遗传语言的根本规律"，解释生命的遗传语言。生物信息学已成为整个生

命科学发展的重要组成部分，成为生命科学研究的前沿。</p>




<h3>研究方向</h3>
<p>生物信息学在短短十几年间，已经形成了多个研究方向，以下简要介绍一些主要的研究重点。</p>

<h3>序列比对</h3>
<p>序列比对（Sequence Alignment）的基本问题是比较两个或两个以上符号序列的相似性或不相似性。从生物学的初衷来看，这一问题包含了以下几

个意义：从相互重叠的序列片断中重构DNA的完整序列。在各种试验条件下从探测数据（probe data）中决定物理和基因图存贮，遍历和比较数据

库中的DNA序列，比较两个或多个序列的相似性，在数据库中搜索相关序列和子序列，寻找核苷酸（nucleotides）的连续产生模式，找出蛋白质和

DNA序列中的信息成分。序列比对考虑了DNA序列的生物学特性，如序列局部发生的插入，删除（前两种简称为indel）和替代，序列的目标函数获

得序列之间突变集最小距离加权和或最大相似性和，对齐的方法包括全局对齐，局部对齐，代沟惩罚等。两个序列比对常采用动态规划算法，这种

算法在序列长度较小时适用，然而对于海量基因序列（如人的DNA序列高达10^9bp），这一方法就不太适用，甚至采用算法复杂性为线性的也难以

奏效。因此，启发式方法的引入势在必然，著名的BLAST和FASTA算法及相应的改进方法均是从此前提出发的。</p>

<h3>蛋白质比对</h3>
<p>基本问题是比较两个或两个以上蛋白质分子空间结构的相似性或不相似性。蛋白质的结构与功能是密切相关的，一般认为，具有相似功能的蛋白质

结构一般相似。蛋白质是由氨基酸组成的长链，长度从50到1000~3000AA（Amino Acids），蛋白质具有多种功能，如酶，物质的存贮和运输，信号

传递，抗体等等。氨基酸的序列内在的决定了蛋白质的3维结构。一般认为，蛋白质有四级不同的结构。研究蛋白质结构和预测的理由是：医药上

可以理解生物的功能，寻找dockingdrugs的目标，农业上获得更好的农作物的基因工程，工业上有利用酶的合成。直接对蛋白质结构进行比对的原

因是由于蛋白质的3维结构比其一级结构在进化中更稳定的保留，同时也包含了较AA序列更多的信息。蛋白质3维结构研究的前提假设是内在的氨基

酸序列与3维结构一一对应（不一定全真），物理上可用最小能量来解释。从观察和总结已知结构的蛋白质结构规律出发来预测未知蛋白质的结构

。同源建模（homology modeling）和指认（Threading）方法属于这一范畴。同源建模用于寻找具有高度相似性的蛋白质结构（超过30%氨基酸相

同），后者则用于比较进化族中不同的蛋白质结构。然而，蛋白结构预测研究现状还远远不能满足实际需要。</p>

<h3>基因识别分析</h3>
<p>基因识别的基本问题是给定基因组序列后，正确识别基因的范围和在基因组序列中的精确位置。非编码区由内含子组成（introns），一般在形成

蛋白质后被丢弃，但从实验中，如果去除非编码区，又不能完成基因的复制。显然，DNA序列作为一种遗传语言，既包含在编码区，又隐含在非编

码序列中。分析非编码区DNA序列没有一般性的指导方法。在人类基因组中，并非所有的序列均被编码，即是某种蛋白质的模板，已完成编码部分

仅占人类基因总序列的3~5%，显然，手工的搜索如此大的基因序列是难以想象的.侦测密码区的方法包括测量密码区密码子（codon）的频率，一阶

和二阶马尔可夫链，ORF（Open Reading Frames），启动子（promoter）识别，HMM（Hidden Markov Model）和GENSCAN，Splice Alignment等等

。</p>

<h3>分子进化</h3>
<p>分子进化是利用不同物种中同一基因序列的异同来研究生物的进化，构建进化树。既可以用DNA序列也可以用其编码的氨基酸序列来做，甚至于可

通过相关蛋白质的结构比对来研究分子进化，其前提假定是相似种族在基因上具有相似性。通过比较可以在基因组层面上发现哪些是不同种族中共

同的，哪些是不同的。早期研究方法常采用外在的因素，如大小，肤色，肢体的数量等等作为进化的依据。较多模式生物基因组测序任务的完成，

人们可从整个基因组的角度来研究分子进化。在匹配不同种族的基因时，一般须处理三种情况：Orthologous：不同种族，相同功能的基因；

Paralogous：相同种族，不同功能的基因；Xenologs：有机体间采用其他方式传递的基因，如被病毒注入的基因。这一领域常采用的方法是构造进

化树，通过基于特征（即DNA序列或蛋白质中的氨基酸的碱基的特定位置）和基于距离（对齐的分数）的方法和一些传统的聚类方法（如UPGMA）来

实现。</p>
<<h3>序列重叠群（Contigs）装配</h3>
<p>根据现行的测序技术，每次反应只能测出500 或更多一些碱基对的序列，如人类基因的测量就采用了短枪（shortgun）方法，这就要求把大量的较

短的序列全体构成了重叠群（Contigs）。逐步把它们拼接起来形成序列更长的重叠群，直至得到完整序列的过程称为重叠群装配。从算法层次来

看，序列的重叠群是一个NP-完全问题。</p>

<h3>遗传密码</h3>
<p>通常对遗传密码的研究认为，密码子与氨基酸之间的关系是生物进化历史上一次偶然的事件而造成的，并被固定在现代生物的共同祖先里，一直延

续至今。不同于这种"冻结"理论，有人曾分别提出过选择优化，化学和历史等三种学说来解释遗传密码。随着各种生物基因组测序任务的完成，为

研究遗传密码的起源和检验上述理论的真伪提供了新的素材。</p>

<h3>药物设计</h3>
<p>人类基因工程的目的之一是要了解人体内约10万种蛋白质的结构，功能，相互作用以及与各种人类疾病之间的关系，寻求各种治疗和预防方法，包

括药物治疗。基于生物大分子结构及小分子结构的药物设计是生物信息学中的极为重要的研究领域。为了抑制某些酶或蛋白质的活性，在已知其蛋

白质3级结构的基础上，可以利用分子对齐算法，在计算机上设计抑制剂分子，作为候选药物。这一领域目的是发现新的基因药物，有着巨大的经

济效益。</p>

<h3>生物系统</h3>
<p>随着大规模实验技术的<p>发展和数据累积，从全局和系统水平研究和分析生物学系统，揭示其发展规律已经成为后基因组时代的另外一个研究 热点-

系统生物学。目前来看，其研究内容包括生物系统的模拟（Curr Opin Rheumatol，2007，463-70），系统稳定性分析（Nonlinear Dynamics 

Psychol Life Sci，2007，413-33），系统鲁棒性分析（Ernst Schering Res Found Workshop， 2007，69-88）等方面。以SBML

（Bioinformatics，2007，1297-8）为代表的建模语言在迅速发展之中，以布尔网络 （PLoS Comput Biol，2007，e163）、微分方程（Mol Biol 

Cell，2004，3841-62）、随机过程（Neural Comput，2007，3262-92）、离散动态事件系统等（Bioinformatics，2007，336-43）方法在系统分

析中已经得到应 用。很多模型的建立借鉴了电路和其它物理系统建模的方法，很多研究试图从信息流、熵和能量流等宏观分析思想来解决系统的

复杂性问题（Anal Quant Cytol Histol，2007，296-308）。当然，建立生物系统的理论模型还需要很长时间的努力，实验观测数据虽然在海量增

加，但是生物系统的模型辨 识所需要的数据远远超过了数据的产出能力。例如，对于时间序列的芯片数据，采样点的数量还不足以使用传统的时

间序列建模方法，巨大的实验代价是系统建模主要困难。系统描述和建模方法也需要开创性的发展。</p>

<h3>技术方法</h3>
<p>生物信息学不仅仅是生物学知识的简单整理和数学、物理学、信息科学等学科知识的简单应用。海量数据和复杂的背景导致机器学习、统计数据分

析和系统描述等方法需要在生物信息学所面临的背景之中迅速发展。巨大的计算量、复杂的噪声模式、海量的时变数据给传统的统计分析带来了巨

大的困难， 需要像非参数统计（BMC Bioinformatics，2007，339）、聚类分析（Qual Life Res，2007，1655-63）等更加灵活的数据分析技术。

高维数据的分析需要偏最小二乘（partial least squares，PLS）等特征空间的压缩技术。在计算机算法的开发中，需要充分考虑算法的时间和空

间复杂度，使用并行计算、网格计算等技术来拓展算法的 可实现性。</p>
<h3>其他</h3>
<p>如基因表达谱分析，代谢网络分析；基因芯片设计和蛋白质组学数据分析等，逐渐成为生物信息学中新兴的重要研究领域；在学科方面，由生物信

息学衍生的学科包括结构基因组学，功能基因组学，比较基因组学，蛋白质学，药物基因组学，中药基因组学，肿瘤基因组学，分子流行病学和环

境基因组学，成为系统生物学的重要研究方法。从发展不难看出，基因工程已经进入了后基因组时代。我们也有应对与生物信息学密切相关的如机

器学习，和数学中可能存在的误导有一个清楚的认识。
</p>




<h2>研究方法</h2>
<p>以数据（库）为核心
1 数据库的建立
2 生物学数据的检索
3 生物学数据的处理
4 生物学数据的利用：计算生物学</p>





<h2>机器学习</h2>
<p>生物信息的大规模给数据挖掘提出了新课题和挑战，需要新的思想的加入.常规的计算机算法仍可以应用于生物数据分析中，但越来越不适用于序

列分析问题.究其原因，是由于生物系统本质上的模型复杂性及缺乏在分子层上建立的完备的生命组织理论.西蒙曾给出学习的定义：学习是系统的

变化，这种变化可使系统做相同工作时更有效。机器学习的目的是期望能从数据中自动地获得相应的理论，通过采用如推理，模型拟合及从样本中

学习，尤其适用于缺乏一般性的理论，"噪声"模式，及大规模数据集.因此，机器学习形成了与常规方法互补的可行的方法.机器学习使得利用计算

机从海量的生物信息中提取有用知识，发现知识成为可能.机器学习方法在大样本，多向量的数据分析工作中发挥着日益重要的作用，而大量的基

因数据库处理需要计算机能自动识别，标注，以避免即耗时又花费巨大的人工处理方法.早期的科学方法——观测和假设——面对高数据的体积，

快速的数据获取率和客观分析的要求——已经不能仅依赖于人的感知来处理了.因而，生物信息学与机器学习相结合也就成了必然.机器学习中最基

本的理论框架是建立在概率基础上的，从某种意义来说，是统计模型拟合的延续，其目的均为提取有用信息.机器学习与模式识别和统计推理密切

相关.学习方法包括数据聚类，神经网络分类器和非线性回归等等.隐马尔可夫模型也广泛用于预测DNA的基因结构.研究重心包括：1）观测和探索

有趣的现象.ML研究的焦点是如何可视化和探索高维向量数据.一般的方法是将其约简至低维空间，如常规的主成分分析（PCA），核主成分分析

（KPCA），独立成分分析（Independent component analysis），局部线性嵌套（LocallyLinear embedding）.2）生成假设和形式化模型来解释

现象[6].大多数聚类方法可看成是拟合向量数据至某种简单分布的混合.在生物信息学中聚类方法已经用于microarray数据分析中，癌症类型分类

及其他方向中.机器学习也用于从基因数据库中获得相应的现象解释.机器学习加速了生物信息学的进展，也带了相应的问题.机器学习方法大多假

定数据符合某种相对固定的模型，而一般数据结构通常是可变的，在生物信息学中尤其如此，因此，有必要建立一套不依赖于假定数据结构的一般

性方法来寻找数据集的内在结构.其次，机器学习方法中常采用"黑箱"操作，如神经网络和隐马尔可夫模型，对于获得特定解的内在机理仍不清楚.</p>





<h3>数学问题</h3>
<p>生物信息学中数学占了很大的比重。统计学，包括多元统计学，是生物信息学的数学基础之一；概率论与随机过程理论，如隐马尔科夫链模型

（HMM），在生物信息学中有重要应用；其他如用于序列比对的运筹学；蛋白质空间结构预测和分子对接研究中采用的最优化理论；研究DNA超螺旋

结构的拓扑学；研究遗传密码和DNA序列的对称性方面的群论等等.总之，各种数学理论或多或少在生物学研究中起到了相应的作用.但并非所有的

数学方法在引入生物信息学中都能普遍成立的，以下以统计学和度量空间为例来说明.</p>

<h3>统计学的悖论</h3>
<p>数学的发展是伴随悖论而发展的.对于进化树研究和聚类研究中最显著的悖论莫过于均值了，就说明了要采用常规的均值方法不能将这两类分开，

也表明均值并不能带来更多的数据的几何性质.那么，如果数据呈现类似的特有分布时，常有的进化树算法和聚类算法（如K-均值）往往会得错误

的结论.统计上存在的陷阱往往是由于对数据的结构缺乏一般性认识而产生的.</p>

<h3>度量空间的假设</h3>
<p>在生物信息学中，进化树的确立，基因的聚类等都需要引入度量的概念.举例来说，距离上相近或具有相似性的基因等具有相同的功能，在进化树

中满足分值最小的具有相同的父系，这一度量空间的前提假设是度量在全局意义下成立.那么，是否这种前提假设具有普适性呢，我们不妨给出一

般的描述：假定两个向量为A，B，其中，则在假定且满足维数间线性无关的前提下，两个向量的度量可定义为：⑴依据上式可以得到满足正交不变

运动群的欧氏度量空间，这也是大多数生物信息学中常采用的一般性描述，即假定了变量间线性无关.然而，这种假设一般不能正确描述度量的性

质，尤其在高维数据集时，不考虑数据变量间的非线性相关性显然存在问题，由此，我们可以认为，一个正确的度量公式可由下式给出：⑵上式中

采用了爱因斯坦和式约定，描述了变量间的度量关系.后者在满足⑶时等价于⑴，因而是更一般的描述，然而问题在于如何准确描述变量间的非线

性相关性，我们正在研究这个问题.</p>





<h2>统计学习</h2><p>
生物信息学中面对的数据量和数据库都是规模很大的，而相对的目标函数却一般难以给出明确的定义.生物信息学面临的这种困难，可以描述成问

题规模的巨大以及问题定义的病态性之间的矛盾，一般从数学上来看，引入某个正则项来改善性能是必然的[7].以下对基于这一思想产生的统计学

习理论，Kolmogorov复杂性[98]和BIC（Bayesian Information Criterion）[109]及其存在的问题给出简要介绍.支持向量机（SVM）是较热门的一

种方法，其研究背景是Vapnik的统计学习理论，是通过最大化两个数据集的最小间隔来实现分类，对于非线性问题则采用核函数将数据集映射至高

维空间而又无需显式描述数据集在高维空间的性质，这一方法较之神经方法的好处在于将神经网络隐层的参数选择简化为对核函数的选择，因此，

受到广泛的注意.在生物信息学中也开始受到重视，然而，核函数的选择问题本身是一个相当困难的问题，从这个层次来看，最优核函数的选择可

能只是一种理想，SVM也有可能象神经网络一样只是机器学习研究进程中又一个大气泡.Kolmogorov复杂性思想与统计学习理论思想分别从不同的角

度描述了学习的性质，前者从编码的角度，后者基于有限样本来获得一致收敛性.Kolmogorov复杂性是不可计算的，因此由此衍生了MDL原则（最小

描述长度），其最初只适用于离散数据，已经推广至连续数据集中，试图从编码角度获得对模型参数的最小描述.其缺陷在于建模的复杂性过高，

导致在大数据集中难以运用.BIC准则从模型复杂性角度来考虑，BIC准则对模型复杂度较高的给予大的惩罚，反之，惩罚则小，隐式地体现了奥卡

姆剃刀（"Occam Razor"）原理，广泛应用于生物信息学中.BIC准则的主要局限是对参数模型的假定和先验的选择的敏感性，在数据量较大时处理

较慢.因此，在这一方面仍然有许多探索的空间.</p>




<h3>讨论总结</h3>
<p>人类对基因的认识，从以往的对单个基因的了解，上升到在整个基因组水平上考察基因的组织结构和信息结构，考察基因之间在位置，结构和功能

上的相互关系.这就要求生物信息学在一些基本的思路上要做本质的观念转变，本节就这些问题做出探讨和思索.

启发式方法
Simond在人类的认知一书中指出，人在解决问题时，一般并不去寻找最优的方法，而只要求找到一个满意的方法.因为即使是解决最简单的问题，

要想得到次数最少，效能最高的解决方法也是非常困难的.最优方法和满意方法之间的困难程度相差很大，后者不依赖于问题的空间，不需要进行

全部搜索，而只要能达到解决的程度就可以了.正如前所述，面对大规模的序列和蛋白质结构数据集，要获得全局结果，往往是即使算法复杂度为

线性时也不能够得到好的结果，因此，要通过变换解空间或不依赖于问题的解空间获得满意解，生物信息学仍需要人工智能和认知科学对人脑的进

一步认识，并从中得到更好的启发式方法.
问题规模不同的处理：Marvin Minsky在人工智能研究中曾指出：小规模数据量的处理向大规模数据量推广时，往往并非算法上的改进能做到的，

更多的是要做本质性的变化.这好比一个人爬树，每天都可以爬高一些，但要想爬到月球，就必须采用其他方法一样.在分子生物学中，传统的实验

方法已不适应处理飞速增长的海量数据.同样，在采用计算机处理上，也并非依靠原有的计算机算法就能够解决现有的数据挖掘问题.如在序列对齐

（sequence Alignment）问题上，在小规模数据中可以采用动态规划，而在大规模序列对齐时不得不引入启发式方法，如BLAST，FASTA.</p>

<h3>乐观中的隐扰</h3>
<p>生物信息学是一门新兴学科，起步于20世纪90年代，至今已进入"后基因组时代"，在这一领域的研究人员均呈普遍乐观态度，那么，是否存在潜在

的隐扰呢不妨回顾一下早期人工智能的发展史，在1960年左右，西蒙曾相信不出十年，人类即可象完成登月一样完成对人的模拟，造出一个与人智

能行为完全相同的机器人.而至今为止，这一诺言仍然遥遥无期.尽管人工智能研究得到的成果已经渗入到各个领域，但对人的思维行为的了解远未

完全明了.从本质来看，这是由于最初人工智能研究上定位错误以及没有从认识论角度看清人工智能的本质造成的；从研究角度来看，将智能行为

还原成一般的形式化语言和规则并不能完整描述人的行为，期望物理科学的成功同样在人工智能研究中适用并不现实.反观生物信息学，其目的是

期望从基因序列上解开一切生物的基本奥秘，从结构上获得生命的生理机制，这从哲学上来看是期望从分子层次上解释人类的所有行为和功能和致

病原因.这类似于人工智能早期发展中表现的乐观行为，也来自于早期分子生物学，生物物理和生物化学的成就.然而，从本质上来讲，与人工智能

研究相似，都是希望将生命的奥秘还原成孤立的基因序列或单个蛋白质的功能，而很少强调基因序列或蛋白质组作为一个整体在生命体中的调控作

用.我们因此也不得不思考，这种研究的最终结果是否能够支撑我们对生物信息学的乐观呢 ?说肯定的话也许为时尚早.</p>





<h2>总结</h2>
<p>综上所述，不难看出，生物信息学并不是一个足以乐观的领域，究竟原因，是由于其是基于分子生物学与多种学科交叉而成的新学科，现有的形势

仍表现为各种学科的简单堆砌，相互之间的联系并不是特别的紧密。在处理大规模数据方面，没有行之有效的一般性方法；而对于大规模数据内在

的生成机制也没有完全明了，这使得生物信息学的研究短期内很难有突破性的结果。那么，要得到真正的解决，最终不能从计算机科学得到，真正

地解决可能还是得从生物学自身，从数学上的新思路来获得本质性的动力。毫无疑问，正如Dulbecco1986年所说："人类的DNA序列是人类的真谛，

这个世界上发生的一切事情，都与这一序列息息相关"。但要完全破译这一序列以及相关的内容，我们还有相当长的路要走。</p>
	</div>
	
	
</body>
</html>
