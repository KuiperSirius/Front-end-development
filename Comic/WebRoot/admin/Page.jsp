<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Page.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<title>Free Doggy Website Template | Home </title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script src="js/script.js" type="text/javascript"> </script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!--light box-->
<script src="js/superfish.js"></script>
<script type="text/javascript" src="js/jquery.lightbox.js"></script>
<link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
	<script type="text/javascript">
		$(function() {
			$('.gallery a').lightBox();
		});
   </script>	
  </head>
  
  <body>
  
  <div class="header">	
     <div class="header-top">
		<div class="wrap">
	           <div class="logo">
			     <h1><a href="index.html">Doggy</a></h1>
		 	  </div>
		 	  <div class="menu">
			   		<ul>
						<li class="active"><a href="index.html">Home</a></li>
						<li class=""><a href="about.html">About</a></li>
						<li class=""><a href="services.html">Services</a></li>
						<li class=""><a href="gallery.html">Gallery</a></li>
						<li class=""><a href="contact.html">Contact</a></li>
					</ul>
					<div class="clear"></div>
	   		  	</div>
		 	  <div class="clear"></div> 
	    </div>
	</div>
	<div class="header-bottom">
		<div class="wrap">
		    <div class="section group example">
				<div class="col_1_of_header span_1_of_header">
				   <img src="images/banner1.jpg" alt=""/>
 				</div>
				<div class="col_1_of_header span_1_of_header">
				   <h3>Lorem Ipsum is simply dummy</h3>
				   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
				   <button class="btn1 btn-1 btn-1a">Read More</button>
				</div>
				<div class="clear"></div> 
		    </div>
		 </div>
	</div>
</div>
<div class="main">
 	<div class="top-box">
	  <div class="wrap">
		 <div class="content-top">
			<div class="section group">
				<div class="col_1_of_3 span_1_of_3">
					<div class="grid_4 alpha vline">
							<h3>Lorem ipsum dolor </h3>
							<div class="thumb-pad1 tp1">
					           <div class="thumbnail clearfix">
				                <figure>
									<img src="images/pic.jpg" alt=""/><em></em>
				                </figure>
					          </div>
			       			 </div>
			       		 <div class="clear"></div>
				         <div class="more1">
				          	<a href="#" class="more_btn">view more</a>
				        </div>
					</div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<div class="grid_4 alpha vline">
							<h3>Lorem ipsum dolor </h3>
							<div class="thumb-pad1 tp1">
					           <div class="thumbnail clearfix">
				                <figure>
									<img src="images/pic1.jpg" alt=""/><em></em>
				                </figure>
					          </div>
			       			 </div>
			       		 <div class="clear"></div>
				         <div class="more1">
				          	<a href="#" class="more_btn">view more</a>
				        </div>
					</div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<div class="grid_4 alpha vline">
							<h3>Lorem ipsum dolor </h3>
							<div class="thumb-pad1 tp1">
			          <div class="thumbnail clearfix">
		                 <figure>
								 	<img src="images/pic2.jpg" alt=""/><em></em>
		                	  </figure>
			          </div>
			        </div>
			        <div class="clear"></div>
			         <div class="more1">
			          <a href="#" class="more_btn">view more</a>
			        </div>
				</div>
				</div>
				<div class="clear"></div> 
			</div>
		</div>
	   </div>
	</div>
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
	<div class="content-middle">
		<div class="wrap">
			<h5><span>Our</span> Gallery</h5>
		   <div class="container">
			<ul id="filters" class="clearfix">
				<li><span class="filter active" data-filter="app card icon logo web">Categorie1</span></li>
				<li><span class="filter" data-filter="app">Categorie2</span></li>
				<li><span class="filter" data-filter="card">Categorie3</span></li>
				<li><span class="filter" data-filter="web">Categorie4</span></li>
			</ul>
			<div class="clear"></div>
		    <div id="portfoliolist" style="     " class="">
				<div class="portfolio logo1 mix_all" data-cat="logo" style=" ">
					<div class="portfolio-wrapper">	
						<div class="gallery">				
						<a href="images/t-pic3.jpg" class="flipLightBox-1">
							<img src="images/pic3.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>				
				<div class="portfolio app mix_all" data-cat="app" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">		
							<a href="images/t-pic4.jpg" class="flipLightBox-2">
								<img src="images/pic4.jpg" alt="Image 2" style="top: 0px;">
							</a>
						</div>
					</div>
				</div>		
				<div class="portfolio web mix_all" data-cat="web" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">						
						<a href="images/t-pic5.jpg" class="flipLightBox-3">
							<img src="images/pic5.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>				
				<div class="portfolio card mix_all" data-cat="card" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic6.jpg" class="flipLightBox-4">
							<img src="images/pic6.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>	
				<div class="portfolio app mix_all" data-cat="app" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<div class="gallery">			
						<a href="images/t-pic7.jpg" class="flipLightBox-4">
							<img src="images/pic7.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>			
				<div class="portfolio card mix_all" data-cat="card" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic8.jpg" class="flipLightBox-4">
							<img src="images/pic8.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>	
				<div class="portfolio card mix_all" data-cat="card" style="  display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic9.jpg" class="flipLightBox-4">
							<img src="images/pic9.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>	
				<div class="portfolio logo1 mix_all" data-cat="logo" style=" ">
					<div class="portfolio-wrapper">	
						<div class="gallery">			
						<a href="images/t-pic10.jpg" class="flipLightBox-4">
							<img src="images/pic10.jpg" alt="Image 2" style="top: 0px;">
						</a>
						</div>
					</div>
				</div>																																							
		</div>
	<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
	<script type="text/javascript">
	$(function () {
		
		var filterList = {
		
			init: function () {
			
				// MixItUp plugin
				// http://mixitup.io
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			
			hoverEffect: function () {
			
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);				
			
			}

		};
		
		// Run the show!
		filterList.init();
		
		
	});	
	</script>
	</div>
   </div>
   </div>
   <div class="top-box">
	  <div class="wrap">
		 <div class="content-top">
			<div class="section group example">
				<div class="col_1_of_2 span_1_of_2">
				   <h4>Lorem Ipsum is simply</h4>
				            <div class="wrapper marTop1">
								<div class="date_section">
									<time datetime="2013-01-01">
										<span class="day">21</span>
										<span class="month">Nov</span>
									</time>
								</div>
								<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean non.</p>
							</div>
							<div class="wrapper marTop1">
								<div class="date_section">
									<time datetime="2013-01-01">
										<span class="day">21</span>
										<span class="month">Nov</span>
									</time>
								</div>
								<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean non.</p>
							</div>
				  </div>
				 <div class="col_1_of_2 span_1_of_2">
				   <h4>Lorem Ipsum is simply</h4>
				            <div class="wrapper marTop1">
								<div class="date_section">
									<time datetime="2013-01-01">
										<span class="day">21</span>
										<span class="month">Nov</span>
									</time>
								</div>
								<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean non.</p>
							</div>
							<div class="wrapper marTop1">
								<div class="date_section">
									<time datetime="2013-01-01">
										<span class="day">21</span>
										<span class="month">Nov</span>
									</time>
								</div>
								<p>Lorem ipsum dolor sit amet consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean non.</p>
							</div>
				  </div>
				  <div class="clear"></div> 
				  <div class="banner1">
						<strong class="fa-comments"></strong>
							<div class="box2">
								<h4>„ Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. „</h4>
								<p class="color1">Jessica Priston, USA</p>
							</div>
				 </div>
		    </div>
		</div>
	  </div>
	</div>
   </div>
  <div class="footer">
	<div class="wrap">
		 <div class="section group">
				<div class="col_1_of_3 span_1_of_3">
					 <div class="f-logo">
			           <h1><a href="index.html">Doggy</a></h1>
		 	        </div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<div class="img_list">
				    <ul>
						<li><span>+91-123-456789</span></li>
						<li><span>+00-123-000000</span></li>
					</ul>
				</div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<ul class="list3">
						<li>
							<img src="images/home.png" alt="">
							<div class="extra-wrap">
							<p>Lorem ipsum  consectetu,<br>dolor sit amet,.</p>
							</div>
						</li>
						<li class="last">
							<img src="images/phone.png" alt="">
							<div class="extra-wrap">
							<p><span>Telephone:</span>+1 800 258 2598</p>
							<p><span>FAX:</span>+1 800 589 2587</p>
							</div>
						</li>
					</ul>
				</div>
				<div class="clear"></div> 
	      </div>
	</div>
	<div class="footer-bot">
		<div class="wrap">
			<p>Design by W3layouts. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			<script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
           <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
	  </div>
	</div>
	</div>
	
  
  
  </body>
</html>






    	
    	
            