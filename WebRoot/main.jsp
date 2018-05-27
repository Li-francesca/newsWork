<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"  href="css/main.css"/>
	
	<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
  </head>
	<body>
		
        
		<div id="menu">
			<ul>
				<li> <a href="main.jsp#main1" class="current">关于我们</a> </li>
				<li> <a href="main.jsp#main2">卓音服务</a> </li>
				<li> <a href="main.jsp#main3">卓音荣誉</a> </li>
				<li> <a href="main.jsp#main4">通知公告</a> </li>
				
			</ul>
		</div>  
		          
	<div id="container">	          
		
	  <div id="main1" class="item">	
	  	
		<div id="second">      <!--  图片部分    -->
			
			<div id="list" style="left: -1000px;">
	  		    <img src="img/三.png"/>
	  		    <img src="img/一.png"/>
	  		    <img src="img/二.png"/>
	  		    <img src="img/三.png"/>
	  		    <img src="img/一.png"/>
	  		    
	  	    </div>
	  	    <div id="buttons">
	  		    <span index="1" class="on"></span>
	  		    <span index="2"></span>
	  		    <span index="3"></span>
	  		   
	  	    </div>
	  	    <a href="javascript:;" class="arrow" id="prev">&lt;</a>
	  	    <a href="javascript:;" class="arrow" id="next">&gt;</a>
	 </div>
   </div>
   <div id="main11" >
   	   <div id="m11top">卓音简介</div>
      <div id="third">
		 <div id="thirds" style="border: 4px solid peachpuff;">
		 	<h3> 卓音简介</h3><br />
		 	<p>东北师范大学卓音工作室是东北师范大学学生就业指导服务中心直属的负责网络工作的机构。2000年3月25日，卓音工作室正式成立。
		 		东北师范大学卓音工作室是东北师范大学学生就业指导服务中心直属的负责网络工作的机构。2000年3月25日，卓音工作室正式成立。
		 		东北师范大学卓音工作室是东北师范大学学生就业指导服务中心直属的负责网络工作的机构。2000年3月25日，卓音工作室正式成立。
            </p>
		 </div>
		 <div id="thirds" style="border: 4px solid pink;">
		 	<h3> 卓音寓意</h3><br />
		 	<p>“卓音”即“Jo_In”，本意为“JobInformation”，又与英文Join同音，暗含卓越、团结之意。由此，“建设全国一流的高校就业工作信息支持系统”成为了东北师大赋予卓音的时代使命。
                                         暗含卓越、团结之意。由此，“建设全国一流的高校就业工作信息支持系统”成为了东北师大赋予卓音的时代使命。
                                      由此，全国一流的高校就业工作信息支持系统”成为了东北师大赋予卓音的时代使命。                         
                                         
            </p>
		 </div>
		 <div id="thirds" style="border: 4px solid palevioletred;">
		 	<h3> 卓音精神</h3><br />
		 	<p>卓音工作室在校领导的关怀和支持下，以高度的责任感和追求卓越的精神，硕果累累。暗含卓越、团结之意。由此，“建设全国一流的高校就业工作信息支持系统”成为了东北师大赋予卓音的时代使命。
                                         暗含卓越、团结之意。由此，“建设全国一流的高校就业工作信息支持系统”成为了东北师大赋予卓音的时代使命。
                                      由此，全国一流的高校就业工作信息支持系统”成为了东北师大赋予卓音的时代使命。                         
                                         
            </p>
		 </div>
	  </div>
   </div>	 
	
	
	
	
	
	<div id="main2" class="item"> <!--   介绍服务部分的内容   -->
		<div id="m2top">我们的服务</div>
		<div id="m2left"> <img src="img/服务图.png" /> </div>
		<div id="m2right">
			<div id="m2rs">
				<div id="m2one"> <img src="img/可爱小标签2.png" /> </div>
				<div id="m2two">
					<p>卓音工作室主要承担“东北高师就业联盟网”、“学生就业指导服务中心网站”、“卓音在线”的设计、开发与维护工作。</p>
				</div>
			</div>
			<div id="m2rs">
				<div id="m2one"><img src="img/可爱小标签1.png" /></div>
				<div id="m2two">
					<p>卓音工作室主要承担“东北高师就业联盟网”、“学生就业指导服务中心网站”、“卓音在线”的设计、开发与维护工作。</p>
				</div>
			</div>
			<div id="m2rs">
				<div id="m2one"><img src="img/可爱小标签4.png" /></div>
				<div id="m2two">
					<p>卓音工作室主要承担“东北高师就业联盟网”、“学生就业指导服务中心网站”、“卓音在线”的设计、开发与维护工作。</p>
				</div>
			</div>
		</div>	
	</div>
		
	<div id="main22">
		<div id="m22top">服务流程</div>
		<div id="m22center"> <img src="img/服务流程.png" /> </div>
	  <div id="m22footer"> 
		<div id="btns">
			<div id="btn" class="active">1.设计交流</div>
			<div id="btn">2.进行设计</div>
			<div id="btn">3.进行施工</div>
		</div>
		<div id="displays">
			<div id="dis" style="display: block;">
				<p>你可以不懂设计，但一定要想清楚自己的需
                                                          求，每一项争取都要列清楚，如果在施工过
                                                            程中突然想到，有可能来不及啊。园林设计
                                                           师是整合未来生活需求…
				</p>
			</div>
			<div id="dis">
				<p> 设计师根据客户的需求和提出的要求进行
                                               设计，然后把设计完成的稿子给客户看，
                                                  然后根据客户提出的意见进行修改，尽可
                                                 能达到客户需求…
				</p>
			</div>
			<div id="dis">
				<p>
					工程人员根据设计师和客户一致通过
                                                       的设计稿进行施工，必须严格按照设计图施工，必须严格要求各个工作人
                                                       员认真工作…
				</p>
			</div>
		</div>
    </div>

   </div>	
		
		
		
		
		
		
	<div id="main3" class="item"> <!--   介绍服务部分的内容   -->
		<div id="m3top">卓音荣誉</div>
		<div id="m3left"> <img src="img/奖杯图1.jpg" /> </div>
		<div id="m3right">
			<ul>
				<li> <span></span>  王萌、杨玉明、刘畅、娄帝和曹予曦获“东北师范大学2006年级的挑战杯竞赛”第四名</li>
				<li> <span></span>  王文、王萌、杨玉明、刘畅、娄帝和曹予曦2006年5月获得第三届“挑战杯”竞赛银奖</li>
				<li> <span></span>  黄艳霞、田光2005年6月《就业信息搜索引擎》获得“挑战杯”科技竞赛发明制作三等奖</li>
				<li> <span></span>  陈彬、曾荣耀2005年11月获东北师范大学第三届“理想杯”校园计算机技能大赛优秀奖</li>
				<li> <span></span>  曾荣耀2005年在吉林、黑龙江大学生数学建模选拔赛中获得二等奖</li>
				<li> <span></span>  张慧慧《英语中的数学》获2004吉林省青少年计算机作品主题竞赛“动画设计二等奖”</li>
				<li> <a href=""> <span></span>更多>></a> </li>
			</ul>
		</div>	
	</div>
		
		
		
		
		
		<div id="main4" class="item">         <!--   新闻列表   -->
			<div id="m4top">通知公告</div>
			<div id="news">
				<ul>
					
					
					
					<li>
						<span id="blue"></span>
						<a href="#">关于卓音工作室纳新通知啦啦啦啦啦<span id="split"></span> 2017 - 8 - 6</a>
					</li>
					<li>
						<span id="blue"></span>
						<a href="#">关于卓音工作室纳新通知啦啦啦啦啦<span id="split"></span> 2017 - 8 - 6</a>
					</li>
					<li>
						<span id="blue"></span>
						<a href="#">关于卓音工作室纳新通知啦啦啦啦啦<span id="split"></span> 2017 - 8 - 6</a>
					</li>
					<li>
						<span id="blue"></span>
						<a href="#">关于卓音工作室纳新通知啦啦啦啦啦<span id="split"></span> 2017 - 8 - 6</a>
					</li>
					<li>
						<span id="blue"></span>
						<a href="#">关于卓音工作室纳新通知啦啦啦啦啦<span id="split"></span> 2017 - 8 - 6</a>
					</li>
					<li>
						<span id="blue"></span>
						<a href="#">关于卓音工作室纳新通知啦啦啦啦啦<span id="split"></span> 2017 - 8 - 6</a>
					</li>
					<li>
						<span id="blue"></span>
						<a href="#">关于卓音工作室纳新通知啦啦啦啦啦<span id="split"></span> 2017 - 8 - 6</a>
					</li>
					
					<li>
						
						<a href="#"> <span id="gengduo"></span> 更多>></a>
					</li>
				</ul>
			
		
		</div>
	
	</div>
	
	
	    <div id="footer">     
		   <ul>
		   	<li>电话： 1234567891</li>
		   	<li>官方QQ： 11223344</li>
		   	<li>公众微信号：456123000</li>
		   </ul>
		   
		</div>
	</div>	
  	
   	
	<script>
		
		
		
		     var box = document.getElementById('third');

 //获得图片NodeList对象集合
             var divs = box.getElementsByTagName('div');

 //单张图片的宽度
              var divWidth = divs[0].offsetWidth;

 //设置掩藏门体露出的宽度
            var exposeWidth = 180;

 //设置容器总宽度
             var boxWidth = divWidth + (divs.length - 1) * exposeWidth;
              box.style.width = boxWidth + 'px';

 //设置每道门的初始位置
           function setDivsPos() {
            for (var i = 1, len = divs.length; i < len; i++) {
               divs[i].style.left = divWidth + exposeWidth * (i - 1) + 'px';
         }
        }
     setDivsPos();

 //计算每道门打开时应移动的距离
           var translate = divWidth - exposeWidth;

 //为每道门绑定事件
            for (var i = 0, len = divs.length; i < len; i++) {
  //使用立即调用的函数表答式，为了获得不同的i值
            (function(i) {
              divs[i].onmouseover = function() {
    //先将每道门复位
              setDivsPos();
    //打开门
              for (var j = 1; j <= i; j++) {
                 divs[j].style.left = parseInt(divs[j].style.left, 10) - translate + 'px';
     //imgs[j].style.left = j*exposeWidth +"px";
    }
   };
   divs[i].onmouseout = function(){
    setDivPos();
   };
  })(i);
 }
		
		
	</script>
	
	<script>
		
		
	  	var second=document.getElementById('second');
	  	var list=document.getElementById('list');
	  	var buttons=document.getElementById('buttons').getElementsByTagName('span');
	  	var prev=document.getElementById('prev');
	  	var next=document.getElementById('next');
	  	var index=1;
	  	var animated=false;
	  	var timer;
	  	
	  	   
	  	function showButton(){
	  		for (var i=0;i<buttons.length;i++) {
	  			if (buttons[i].className=='on') {
	  				buttons[i].className='';
	  				break;
	  			}
	  		}
	  		buttons[index-1].className='on';
	  	}
	  	function animate(offset){
	  		animated=true;
	  		var newLeft=parseInt(list.style.left)+offset;
	  		var time=300;
	  		var interval=10;
	  		var speed=offset/(time/interval);
	  		function go(){
	  			if(speed<0&&parseInt(list.style.left)>newLeft||(speed>0&&parseInt(list.style.left)<newLeft)){
	  				list.style.left=parseInt(list.style.left)+speed+'px';
	  				setTimeout(go,interval);
	  			}
	  			else{
	  				animated=false;
	  				list.style.left=newLeft+'px';
	  		        if(newLeft>-1000){
	  			        list.style.left=-3000+'px';
	  		        }
	  		        if(newLeft<-3000){
	  			        list.style.left=-1000+'px';
	  		        }
	  			}
	  		}
	  		go();
	  	}
	  	
	  	function play(){
	  		timer=setInterval(function(){
	  			next.onclick();
	  		},3000);
	  	}
	  	function stop(){
	  		clearInterval(timer);
	  	}
	  	
	  	next.onclick=function(){
	  		if(index==3){
	  			index=1;
	  		}
	  		else{
	  			index+=1;
	  		}
	  		
	  		showButton();
	  		if(!animated){
	  			animate(-1000);
	  		}
	  		
	  	}
	  	prev.onclick=function(){
	  		if(index==1){
	  			index=3;
	  		}
	  		else{
	  			index-=1;
	  		}
	  		showButton();
	  		if(!animated){
	  			animate(1000);
	  		}
	  	}
	  	for (var i=0;i<buttons.length;i++) {
	  		buttons[i].onclick=function(){
	  			if(this.className=='on'){
	  				return;
	  			}
	  			var myIndex=parseInt(this.getAttribute('index'));
	  			var offset=-1000*(myIndex-index);
	  			
	  			index=myIndex;
	  			showButton();
	  			if(!animated){
	  			animate(offset);
	  		}
	  		}
	  	}
	  	second.onmouseover=stop;
	  	second.onmouseout=play;
	  	play();
	  	
	  	
	  </script>	
	  	
			
	<script>		
			
	 window.onscroll=function(){
        var top = document.documentElement.scrollTop || document.body.scrollTop;
        var menus = document.getElementById("menu").getElementsByTagName("a");
        var items=document.getElementById("container").getElementsByClassName("item");

        var currentId="";
        for(var i=0;i<items.length;i++){
          var _item=items[i];
          var _itemTop = _item.offsetTop;
          if(top>_itemTop - 200){
            currentId=_item.id;
          }else{
            break;
          }
        }
        if(currentId!=""){
          //给正确的menu下的a元素class赋值
          for(var j=0;j<menus.length;j++){
            var _menu=menus[j];
            var _href=_menu.href.split("#");//因为只通过href获取的链接为一长串链接，需要通过#分成数组
            if(_href[_href.length-1]!=currentId){
              _menu.className = "";
            }else{
              _menu.className = " current";
            }
          }
        }
      }
	
	  </script>
	  
	  <script>
	  	var oDiv=document.getElementById('btns');
			var aBtn=oDiv.getElementsByTagName('div');
			var aDiv=document.getElementById('displays').getElementsByTagName('div');
			for(var i=0;i<aBtn.length;i++){
				aBtn[i].index=i;
				aBtn[i].onmouseover=function(){
					for(var i=0;i<aBtn.length;i++){
						aBtn[i].className='';
						aDiv[i].style.display='none';
					}
					this.className='active';
					aDiv[this.index].style.display='block';
					
				}
			}
	  </script>
		
	</body>
</html>
