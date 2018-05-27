
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <base href="<%=basePath%>">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>党建工作-东北师范大学信息与软件工程学院</title>
<meta name="keywords" content="东北师范大学信息与软件工程学院">


<!--<link rel="stylesheet" type="text/css" href="dfiles/15724/uploadfiles/template/rjxy/css.css" />-->

<!--Announced by Visual SiteBuilder 9-->

<!-- CustomerNO:77656262657232307055151604061d -->

<link media="all" href="css/index.css" type="text/css" rel="stylesheet">
</head>

<body>
<!--ie6下透明--> 

<!--ie6 end--><!--左侧菜单--> 

<!--左侧菜单结束--><!--top_bg开始-->
<div class="top_bg">
  <div class="search"> <!--#begineditable name="全文检索" viewid="148341" tagname="全文检索" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""-->
    <form action="http://soft.nenu.edu.cn/ssjgy.jsp?wbtreeid=1075" method="post" id="au0a" name="au0a" onsubmit="return _nl_ys_check()" style="display: inline;">
      <input id="lucenenewssearchkeyword148341" name="lucenenewssearchkeyword" value="" type="hidden">
      <input id="_lucenesearchtype148341" name="_lucenesearchtype" value="1" type="hidden">
      <input id="searchScope148341" name="searchScope" value="0" type="hidden">
      <input value="1" name="type" type="hidden">
      <label for="textfield"></label>
      <input id="showkeycode148341" class="search_input" value="" name="showkeycode">
      <input id="button" class="search_button" value=" " name="textfield2" type="submit">
    </form>
    <!--#endeditable--></div>
</div>
<!--top_bg结束--><!--list_nav开始-->
<div class="list_nav">
  <div class="list_sy"><a href="http://soft.nenu.edu.cn/index.htm"><img src="images/list_sy.gif" border="0"> </a></div>
  <!--#begineditable name="网站导航" viewid="148342" tagname="网站导航" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""-->
  <ul>
    <li> <a href="http://soft.nenu.edu.cn/xygk.htm" title="学院概况">学院概况</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/bxts.htm" title="办学特色">办学特色</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/xkzy.htm" title="学科专业">学科专业</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/kxyj.htm" title="科学研究">科学研究</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/rcpy.htm" title="人才培养">人才培养</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/zsxx.htm" title="招生信息">招生信息</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/xsjy.htm" title="学生就业">学生就业</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/hzjl.htm" title="合作交流">合作交流</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/shfw.htm" title="社会服务">社会服务</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/djgz.htm" title="党建工作">党建工作</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/jzyg.htm" title="教职员工">教职员工</a> </li>
    <li> <a href="http://soft.nenu.edu.cn/xyzx.htm" title="学院资讯">学院资讯</a> </li>
  </ul>
  <!--#endeditable--> </div>
<!--list_nav结束-->
<div class="list_banner"></div>
<div class="list_warp">
  <div class="list_left">
    <h1><!--#begineditable name="栏目名称1" viewid="148351" tagname="栏目名称1" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""-->新闻分类<!--#endeditable--></h1>
    <div class="list_left_list"><!--左侧导航开始 -->
      <div class="leftnav_center"> <!--左侧导航开始 -->
        <div class="leftnav_center"> <!--#begineditable name="二级网站导航" viewid="148352" tagname="二级网站导航" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""-->
          <ul id="menu">
            <c:forEach items="${typeresult}" var="typeresult"> 
							  	
	    							 <li> 
	    							 <a href ="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &type=${typeresult.type} ">${typeresult.type}</a>
	    <%-- 							 <a href ="${pageContext.request.contextPath}/servlet/AddTypeServlet?status=doPost &id=${typeresult.id} ">添加</a> --%>
	    							<%--  <a href ="${pageContext.request.contextPath}/servlet/DeleteType?status=doPost &id=${typeresult.id} ">删除</a> --%>
	    							 </li>	    		 
    	       				</c:forEach>
          </ul>
          <!--#endeditable--> </div>
        <!--左侧导航结束 --> </div>
    </div>
    <div class="left_banner"><!--#begineditable name="列表页baaner图片列表" viewid="148353" tagname="列表页baaner图片列表" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""--> <img src="images/left_banner.jpg" border="0"> <!--#endeditable--></div>
  </div>
  <div class="list_right">
    <div class="list_top">
      <div class="list_img"></div>
      <div class="list_img_h1"><!--#begineditable name="栏目名称2" viewid="148354" tagname="栏目名称2" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""-->新闻列表<!--#endeditable--></div>
      <!--#begineditable name="列表页当前位置" viewid="148355" tagname="列表页当前位置" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""-->
      <div class="list_seat"> 当前位置: 
        新闻列表 </div>
      <!--#endeditable--> </div>
    <!--内容-->
    <div class="nei"> <!--#begineditable name="静态翻页列表" viewid="148356" tagname="静态翻页列表" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""-->
      <ul class="nei_1">
        <c:forEach items="${newsresult}" var="newsresult">  
	    	   <tr>    	   	  	    	 
	    	   	 <li id="line_u7_0"><a href = "${pageContext.request.contextPath}/servlet/ContentQServlet?status=doPost &id=${yuleresult.id} ">${yuleresult.title}</a>></li>
	    	   <%-- 	 <li id="line_u7_1">${newsresult.admin}</li>
	    	   	 <li id="line_u7_2">${newsresult.type}</li>
	    	   	 <li id="line_u7_3">${newsresult.date}</li> --%>
	    	   	<%--  <td><a href ="${pageContext.request.contextPath}/servlet/ContentServlet?status=doPost &id=${newsresult.id} ">更改</a></td>
	    		 <td><a href ="${pageContext.request.contextPath}/servlet/DelServlet?status=doPost &id=${newsresult.id} ">删除</a></td>	    		  --%>
	    	   </tr>
	       </c:forEach>  	
        <!-- <li id="line_u7_0"> <a href="http://soft.nenu.edu.cn/info/1077/1685.htm" target="_top" title="入党申请书">入党申请书</a> <span>2015-05-01</span> </li>
        <span id="section_u7_0" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_1"> <a href="http://soft.nenu.edu.cn/info/1077/1684.htm" target="_top" title="关于将×××同志进行发展对象备案的报告">关于将×××同志进行发展对象备案的报告</a> <span>2015-05-01</span> </li>
        <span id="section_u7_1" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_2"> <a href="http://soft.nenu.edu.cn/info/1077/1683.htm" target="_top" title="思想汇报">思想汇报</a> <span>2015-05-01</span> </li>
        <span id="section_u7_2" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_3"> <a href="http://soft.nenu.edu.cn/info/1079/1629.htm" target="_top" title="2016年5月软件学院发展学生党员公示">2016年5月软件学院发展学生党员公示</a> <span>2016-05-03</span> </li>
        <span id="section_u7_3" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_4"> <a href="http://soft.nenu.edu.cn/info/1078/1624.htm" target="_top" title="东北师范大学信息与软件工程学院本科生（研究生）党支部工作记录本内容导引">东北师范大学信息与软件工程学院本科生（研究生）党支部工作记录本内...</a> <span>2016-04-01</span> </li>
        <span id="section_u7_4" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_5"> <a href="http://soft.nenu.edu.cn/info/1078/1623.htm" target="_top" title="信息与软件工程学院党员发展及转正党务材料准备详细目录">信息与软件工程学院党员发展及转正党务材料准备详细目录</a> <span>2015-12-02</span> </li>
        <span id="section_u7_5" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_6"> <a href="http://soft.nenu.edu.cn/info/1079/1628.htm" target="_top" title="2015年11月软件学院发展学生党员公示">2015年11月软件学院发展学生党员公示</a> <span>2015-11-13</span> </li>
        <span id="section_u7_6" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_7"> <a href="http://soft.nenu.edu.cn/info/1079/1627.htm" target="_top" title="2015年5月软件学院发展学生党员公示">2015年5月软件学院发展学生党员公示</a> <span>2015-05-18</span> </li>
        <span id="section_u7_7" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_8"> <a href="http://soft.nenu.edu.cn/info/1077/1682.htm" target="_top" title="关于将×××同志进行入党积极分子备案的报告">关于将×××同志进行入党积极分子备案的报告</a> <span>2015-05-01</span> </li>
        <span id="section_u7_8" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span>
        <li id="line_u7_9"> <a href="http://soft.nenu.edu.cn/info/1077/1681.htm" target="_top" title="思想汇报">思想汇报</a> <span>2015-05-01</span> </li>
        <span id="section_u7_9" style="display: none;">
        <hr style="height: 1px; border-width: 1px medium medium; border-style: dashed none none; border-color: rgb(204, 204, 204) -moz-use-text-color -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
        </span> -->
      </ul>
      <div style="margin-top: 15px;" align="center">
        <input name="actiontype" value="" type="hidden">
        <input name="_scode_" value="1492581378975" type="hidden">
        <input name="urltype" value="tree.TreeTempUrl" type="hidden">
        <input name="wbtreeid" value="1075" type="hidden">
        <input name="outFlag" value="false" type="hidden">
        <table cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td colspan="0"><table class="headStyle3kav3vllkx" width="100%" cellspacing="0" cellpadding="1">
                  <tbody>
                    <tr valign="middle">
                       第${requestScope.currentPage}页/共${requestScope.totalPage}页
	         <a href="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost&currentPage=1&type=${requestScope.type}">首页</a>  
	         
	         <c:choose>  
	             <c:when test="${requestScope.currentPage=='1'}">  
	                                          上一页  
	             </c:when>  
		         <c:otherwise>  
		               
		               <a href="${pageContext.request.contextPath}/servlet/TypeServlet?currentPage=${currentPage-1}&type=${type}">上一页</a>   
		         
		         </c:otherwise> 
		          
	         </c:choose> 
	         
	         <c:choose>  
	             <c:when test="${requestScope.currentPage==requestScope.totalPage}">  
	                                         下一页  
	             </c:when>  
		         <c:otherwise>  
		             <a href="${pageContext.request.contextPath}/servlet/TypeServlet?&currentPage=${requestScope.currentPage+1}&type=${requestScope.type}"> 下一页</a>  
		         </c:otherwise>  	         
	         </c:choose> 
	        
	         <a href="${pageContext.request.contextPath}/servlet/TypeServlet?status=doPost &currentPage=${requestScope.totalPage}&type=${requestScope.type}">尾页</a>  
                    <!--   <td id="fanye148356" width="1%" nowrap="" align="left">共49条&nbsp;&nbsp;1/5&nbsp;</td>
                      <td nowrap="" align="left"><div><span class="PrevDisabled">首页</span><span class="PrevDisabled">上页</span><a href="http://soft.nenu.edu.cn/djgz/4.htm" class="Next">下页</a><a href="http://soft.nenu.edu.cn/djgz/1.htm" class="Next">尾页</a>&nbsp;&nbsp;
                          <input class="defaultButtonStyle" id="gotopagebut" name="a148356Find" value="转到" onclick="javascript:a148356_gopage_fun()" type="button" align="absmiddle">
                          <input size="2" class="defaultInputStyle" name="a148356GOPAGE" id="a148356GOPAGE" value="" style="margin-left: 1px; margin-right: 1px;" align="absmiddle">
                          页</div></td> -->
                    </tr>
                  </tbody>
                </table></td>
            </tr>
          </tbody>
        </table>
      </div>
      <!--#endeditable--> </div>
    <!--内容--></div>
  <div style="clear: both;"></div>
</div>
<div class="copyright">
  <div class="copyright_box">
    <div class="copyright_01"></div>
    <!--#begineditable name="版权" viewid="148348" tagname="版权" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""--><!-- 版权内容请在本组件"内容配置-版权"处填写 -->
    
    <div class="copyright_02">
      <p>版权所有© 东北师范大学信息与软件工程学院 地址：吉林省长春市净月大街2555号 邮编：130117</p>
    </div>
    <!--#endeditable-->
    <div class="copyright_03"><!--#begineditable name="联系我们链接列表" viewid="148349" tagname="联系我们链接列表" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp=""--> <a href="#" onclick="_addDynClicks(&quot;wburl&quot;, 1306840805, 19118)">联系我们</a> | <a href="http://mail.nenu.edu.cn/" onclick="_addDynClicks(&quot;wburl&quot;, 1306840805, 19119)">E-mail</a> <!--#endeditable--></div>
  </div>
</div>
<!-- <div id="floatAd60" style="position: absolute; top: 0px; left: 0px;"> #begineditable name="浮动图片列表" viewid="148350" tagname="浮动图片列表" action="" layout="" contype="" stylesysid="" template="" tplstyle="" clone="" istemp="true" <a href="http://125.222.201.184:8080/OPE/teacher.jsp" title="" onclick="_addDynClicks(&quot;wbimage&quot;, 1306840805, 26978)" target="_top"> <img src="images/3c7ba593-ee5a-4c6a-b29b-5947355e8e94.jpg" title="" border="0"> </a> <br>
  <h5 align="right"><a onclick="javascript:this.parentElement.parentElement.style.display='none'">关闭</a></h5>
  #endeditable</div> -->
</body>
</html>
















<%-- <%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="utf-8" />
	<title>卓音工作室</title>
	<link rel="icon" href="img/logobluemin.ico" type="img/x-ico" />
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/main.css" />
  </head>
  
  <body>
   	<div class="nav clearfloat">
			<img src="img/logo.png" />
			<p id="logo">蓝旭工作室</p>		
			<ul class="navul">
				<li>
					<a href="#content2">关于我们</a>
				</li>
				<li>
					<a href="#content4">服务范围</a>
				</li>
				<li>
					<a href="#content5">服务流程</a>
				</li>
				<li>
					<a href="#content6">蓝旭出品</a>
				</li>
				<li>
					<a href="#content7">蓝旭新闻</a>
				</li>
				<li id="lastnavli">
					<a onclick="showlogoin(event)" ondblclick="hiddenLogoin()">登录/注册

						<div id="lojoin">
							<div id="LojoinLO" style="color:black">
								<a href="login.jsp" style="color:black">管理员登录</a>
							</div>
							<div id="LojoinUS" style="color:black">
								<a href="upload.jsp" style="color:black">加入我们</a>
							</div>
						</div>
					</a>
				</li>
			</ul>
		</div>
		<div class="sidebar">
			<div class="barhead">
				<img id="bluelogo" src="img/logoblue.png" />
				<span>联系蓝旭工作室</span>
			</div>
			<div class="barcontent">
				<div class="baco1">SERVICES</div>
				<div class="baco2">联系我们</div>
				<div class="baco3">0431-84536739</div>
				<div class="baco2">官方QQ</div>
				<div class="baco3 baco4">2715127056</div>
				<div class="baco2 baco5">微信二维码</div>
				<img class="baco6" src="img/erweima.png" />
			</div>
		</div>
		<div class="content content1" id="content1">
			<div class="ContentIntru">
				<p>我们提供<span>品牌网站设计</span>，<span>手机APP设计</span>，<span>响应式网站</span>，<span>微网站设计</span>等解决方案！</p>
			</div>
			<div class="Contentimg"></div>
		</div>
		<div class="content content2" id="content2">
			<h1>旭势待发</h1>
			<div class="cont2">
				<div class="con21">
					<div class="con21_logo">
						<img src="img/jianjie.png" />
					</div>
					<h4 id="bilibili">蓝旭简介</h4>
					<p>蓝旭工作室成立于2007年3月，隶属于东北师范大学学生资助管理中心。蓝旭以打造全国一流的蓝旭工作室成立于2007年3月，隶属于东北师范大学学生资助管理中心。蓝旭以打造全国一流的蓝旭工作室成立于2007年3月，隶属于东北师范大学学生资助管理中心。</p>
				</div>
				<div class="con21">
					<div class="con21_logo">
						<img src="img/biaozhi.png" />
					</div>
					<h4>蓝旭标志</h4>
					<p>工作室的标志以谐蓝色日光之音，取科技创新、立志修德，永葆创业激情之意。 晨曦，初升的蓝色太阳，阿拉伯数字0和汉字一的结合，加上象征着资助的飞鸟图案。整体上以和谐的姿态呈现出来。</p>
				</div>
				<div class="con21">
					<div class="con21_logo">
						<img src="img/jinshen.png" />
					</div>
					<h4>蓝旭精神</h4>
					<p>“天亮了”精神包含了蓝旭人对事业和技术的执着，对生活和创新的激情，对团队和伙伴的忠诚。他体现了蓝旭人的本质：勇于拼搏，敢于承担，善于开拓，不畏艰苦，传承着“天亮了”精神的蓝旭人将会走向明亮的未来。</p>
				</div>
			</div>
		</div>
		<!-- 蓝旭前辈 -->
		<div class="content content3">
			<h1>蓝旭前辈</h1>
			<div class="cont3">
				<div class="qian qian1">
					<!-- 外面的框框，得让他转起来 -->

					<!-- 转不起来一开始，因为同级的两个层级不同，获取一个就获取不到另一个；现在获取父元素，咋也能获取到 -->
					<div class="qian_border qian_border1"></div>
					<div class="qian_introduce">
						<p class="qianintp1">姜坤</p>
						<p class="qianintp2">2012级</p>
						<p class="qianintp2">保研至北京航空航天大学计算机学院</p>
					</div>
				</div>
				<div class="qian qian2 qian_border2">
					<div class="qian_border"></div>
					<div class="qian_introduce">
						<p class="qianintp1">赵鑫</p>
						<p class="qianintp2">2012级</p>
						<p class="qianintp2">就职于深圳腾讯公司</p>
					</div>
				</div>
				<div class="qian qian3 qian_border3">
					<div class="qian_border"></div>
					<div class="qian_introduce">
						<p class="qianintp1">冯兴升</p>
						<p class="qianintp2">2011级</p>
						<p class="qianintp2">就职于杭州阿里巴巴公司</p>
					</div>
				</div>
				<div class="qian qian4">
					<div class="qian_border"></div>
					<div class="qian_introduce">
						<p class="qianintp1">刘玉婷</p>
						<p class="qianintp2">2011级</p>
						<p class="qianintp2">就职于北京百度公司</p>
					</div>
				</div>

				<div class="qian"></div>
				<div class="qian"></div>
			</div>
		</div>
		<div class="content content4" id="content4">
			<h1>服务范围</h1>
			<!-- span那里占坑！！！！！！！！！！！！！！！！！！！ -->
			<div class="con4_content">
				<div class="con4_1 con4">
					<div class="con4_circle con4_circle1">
					</div>
					<span class="hh">我们提供最强大的</span>
					<p>网站定制</p>
				</div>
				<div class="con4_2 con4">
					<div class="con4_circle con4_circle2">
					</div>
					<span>我们提供最酷炫的</span>
					<p>微信开发</p>
				</div>
				<div class="con4_3 con4">
					<div class="con4_circle con4_circle3">
					</div>
					<span>我们提供最有效的</span>
					<p>平面设计</p>
				</div>
				<div class="con4_4 con4 clearfloat">
					<div class="con4_circle con4_circle4">
					</div>
					<span>我们提供最全面的</span>
					<p>系统维护</p>
				</div>

				<!-- 占坑，变出蓝框框和了解详情 -->

			</div>
		</div>
		<div class="content content5" id="content5">
			<!-- <h1>服务流程</h1> -->
			<div id="cont5">
				<div id="con5_pagewrap">
					<div class="page" id="con5_page1">
						<h2>服务流程</h2>
					</div>
					<div class="page" id="con5_page2">
						<h2>A.评估需求&达成合作</h2>
						<h3>项目前期沟通流程</h3>
						<ul>
							<li>交互设计需求</li>
							<li> 程序开发需求</li>
							<li>项目评估预报价</li>
							<li>确认需求鉴定协议</li>
							<li>预付定金</li>
						</ul>
					</div>
					<div class="page" id="con5_page3">
						<h2>B.交互设计&程序开发</h2>
						<h3>项目执行操作流程</h3>
						<ul>
							<li>网络沟通&确认</li>
							<li>视觉设计</li>
							<li>设计修改&确认</li>
							<li>前端开发</li>
							<li>程序开发</li>
							<li>测试除错</li>
						</ul>
					</div>
					<div class="page" id="con5_page4">
						<h2>C.验收部署&优化维护</h2>
						<h3>项目后续技术支持</h3>
						<ul>
							<li>项目测试发布&验收</li>
							<li>结清余款</li>
							<li>项目部署上线</li>
							<li>基础SEO优化</li>
							<li>添加统计监测</li>
							<li>定期升级优化</li>
						</ul>
					</div>
					<div class="page" id="con5_page5">
						<h2>完成</h2>
					</div>
				</div>
				<div class="con5_op">
					<a href="javascript:shangyige()" class="icon-arrow-left2"></a>
					<a href="javascript:next()" class="icon-arrow-right2"></a>
				</div>
			</div>
		</div>
		<div class="content content6" id="content6">
			<h1>蓝旭出品</h1>
			<!-- 舞台 -->
			<div class="con6_container">
				<div class="con6_wrap" id="con6con">
					<!-- 第er张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image2">
									<!-- <img src="img/baowei-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>保卫处</h4>
								<p class="desc">东北师范大学保卫处官方网站，负责东北师范大学保卫处官方信息的发布、沟通、介绍等业务，获赞无数</p>
							</div>
						</div>
					</div>

					<!-- 第qi张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image7">
									<!-- <img src="img/15naxin.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>财力支持</h4>
								<p class="desc">东北师范大学学生资助管理中心官方网站，负责学生资助管理中心官方资讯的发布、学生资助工作相关资料的呈现、相关资源下载与在线咨询等业务。</p>
							</div>
						</div>
					</div>
					<!-- 第si章 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image4">
									<!-- <img src="img/T-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>蓝旭2015纳新海报</h4>
								<p class="desc"></p>
							</div>
						</div>
					</div>
					<!-- 第yi张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image1">
									<!-- <img src="img/lanxu.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>蓝旭工作室15年纳新海报</h4>
								<p class="desc">蓝旭工作室15年纳新海报，蓝旭工作室设计部出品。</p>
							</div>
						</div>
					</div>
					<!-- 第五张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image5">
									<!-- <img src="img/haibao-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>蓝旭工作室官方网站</h4>
								<p class="desc">蓝旭工作室官方网站，负责工作室风采展示、信息发布、业务洽谈等业务。</p>
							</div>
						</div>
					</div>
					<!-- 第六章 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image6">
									<!-- <img src="img/cailinew-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>工作室T恤</h4>
								<p class="desc">蓝旭工作室最新版室服</p>
							</div>
						</div>
					</div>
					<!-- 第qi张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image7">
									<!-- <img src="img/caili-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>校团委网站</h4>
								<p class="desc">校团委门户网站是及时传达校团委动态，了解团委机构组成和相关人员信息、规章制度等的重要窗口。团委是红色的，它重温红色经典，传承红色精神，弘扬雷锋精神。 </p>
							</div>
						</div>
					</div>
					<!-- 第八张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image8">
									<!-- <img src="img/tuanwei-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>微心愿助学平台</h4>
								<p class="desc">东北师范大学微心愿助学平台官方网站，负责微心愿助学计划各种信息的发布。</p>
							</div>
						</div>
					</div>
					<!-- 第san张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image9">
									<!-- <img src="img/yangsi.png" style="width:140px;" > -->
								</div>
							</div>
							<div class="side side-back">
								<h4>财力支持（新版）</h4>
								<p class="desc">东北师范大学学生资助管理中心官方网站，负责学生资助管理中心官方资讯的发布、学生资助工作相关资料的呈现、相关资源下载与在线咨询等业务。</p>
							</div>
						</div>
					</div>
					<!-- 第十张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image10">
									<!-- <img src="img/xinyuan-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>扬思网</h4>
								<p class="desc">杨思网是最新改版的校团委门户网站，其整体风格清新淡雅，绿意盎然，宛若新生的嫩草般迸发着生命的活力，正如杨思网Youth的寓意，它是年轻而又充满朝气，蓬勃向上的。</p>
							</div>
						</div>
					</div>
					<!-- 第十一张 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image11">
									<!-- <img src="img/zhanban-big.png" style="width:140px;"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>保密知识宣传展板</h4>
								<p class="desc">东北师范大学保密知识宣传展板，蓝旭工作室设计部出品。</p>
							</div>
						</div>
					</div>
					<!-- 第十二章 -->
					<div class="photo photo-front " onclick="turn(this)">
						<!--控制2D位置、旋转-->
						<div class="photo-wrap">
							<!--控制3D翻转-->
							<div class="side side-front">
								<div class="image image12">
									<!-- <img src="img/zhiyuan-big.png"> -->
								</div>
							</div>
							<div class="side side-back">
								<h4>志愿东师</h4>
								<p class="desc">志愿东师是一个发布志愿公告，招募志愿者，为管理志愿服务提供便利的网站，富有爱心的志愿者们只须登录上该网站就可以及时捕获一些重要的志愿服务信息，下载相关资料等。</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>		
		<!-- 蓝旭新闻 -->
		<!-- 标题、内容、发布人、类型、时间 -->
		<div class="content content7" id="content7">
			<!-- 加左右键 -->
			<h3>新闻播报</h3>
			<div class="con7_news">
				<!-- 纯新闻框 -->
				<div class="con7_news_content">
				
					<!-- 今日推荐 -->					
					<div class="news newsstypezl newsstypetj">
					
					   <c:forEach items="${zongheresult}" var="zongheresult">  
						<div class="con7_connews">					
								<!-- 新闻标题 -->
								<h4 class="titles" >
									<a href = "${pageContext.request.contextPath}/servlet/ContentQServlet?status=doPost &id=${zongheresult.id} ">${zongheresult.title}</a>
								</h4>
								<!-- 发布人 -->
								<span class="persons" >${zongheresult.author}</span>
								<!-- 类型 -->
								<span class="types">${zongheresult.type}</span>
								<!-- 时间 -->
								<span class="times">${zongheresult.date}</span>							
						</div>
					  </c:forEach> 
					  												
				   </div>				   				 
				   
					<!-- 娱乐新闻 -->
					<div class="news newsstypezl newwstypefun">
					 <c:forEach items="${yuleresult}" var="yuleresult">  
						<div class="con7_connews">					
								<!-- 新闻标题 -->
								<h4 class="titles" >
									<a href = "${pageContext.request.contextPath}/servlet/ContentQServlet?status=doPost &id=${yuleresult.id} ">${yuleresult.title}</a>
								</h4>
								<!-- 发布人 -->
								<span class="persons" >${yuleresult.author}</span>
								<!-- 类型 -->
								<span class="types">${yuleresult.type}</span>
								<!-- 时间 -->
								<span class="times">${yuleresult.date}</span>						
						</div>
					</c:forEach> 						
					</div>
					
					<!-- 军事新闻 -->
					<div class="news newsstypezl newsstypefire">
					 <c:forEach items="${junshiresult}" var="junshiresult">  
						<div class="con7_connews">					
								<!-- 新闻标题 -->
								<h4 class="titles" >
									<a href = "${pageContext.request.contextPath}/servlet/ContentQServlet?status=doPost &id=${junshiresult.id} ">${junshiresult.title}</a>
								</h4>
								<!-- 发布人 -->
								<span class="persons" >${junshiresult.author}</span>
								<!-- 类型 -->
								<span class="types">${junshiresult.type}</span>
								<!-- 时间 -->
								<span class="times">${junshiresult.date}</span>							
						</div>
					</c:forEach> 
					</div>
					
					<!-- 体育新闻 -->
					<div class="news newsstypezl newsstypesport">
					 <c:forEach items="${tiyuresult}" var="tiyuresult">  
						<div class="con7_connews">					
								<!-- 新闻标题 -->
								<h4 class="titles" >
									<a href = "${pageContext.request.contextPath}/servlet/ContentQServlet?status=doPost &id=${tiyuresult.id} ">${tiyuresult.title}</a>
								</h4>
								<!-- 发布人 -->
								<span class="persons" >${tiyuresult.author}</span>
								<!-- 类型 -->
								<span class="types">${tiyuresult.type}</span>
								<!-- 时间 -->
								<span class="times">${tiyuresult.date}</span>							
						</div>
					</c:forEach> 
				 </div>
				 
				</div>
				
				<div class="news_page">
					<a href=""  class="icon-arrow-left2" id="newspage1"></a>
					<a class="icon-arrow-right2" id="newspage2"></a>
				</div>
			</div>
			<div class="con7_news_type clearfix">
				<div class="newstype typefun" id="newty_fun">
					娱乐
				</div>
				<div class="newstype typesport" id="newty_sport">
					体育
				</div>
				<div class="newstype typefire" id="newty_fire">
					军事
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/mainn.js"></script>
  </body>
</html>
 --%>