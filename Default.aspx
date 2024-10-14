<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml">
     <head runat="server">
     <title>Home</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="assets/images/logo1.png" type="image/x-icon">
     <link rel="shortcut icon" href="assets/images/logo1.png" type="image/x-icon" />
     <link rel="stylesheet" type="text/css" media="screen" href="assets/css/style.css">
     <link rel="stylesheet" href="assets/css/owl.carousel.css">
     <script src="assets/js/jquery.js"></script>
     <script src="assets/js/jquery-migrate-1.1.1.js"></script>
     <script src="assets/js/jquery.easing.1.3.js"></script>
	 <script src="assets/js/script.js"></script>
     <script src="assets/js/jquery.equalheights.js"></script>
     <script src="assets/js/superfish.js"></script>
     <script src="assets/js/jquery.mobilemenu.js"></script>
     <script src="assets/js/jquery.ui.totop.js"></script>
     <script src="assets/js/owl.carousel.js"></script> 
         <link href="assets/css/default.css" rel="stylesheet" />
         <style>

             #bgimage {
	background: url('assets/images/MainLogo5.jpg') 50% 0 no-repeat;
    background-size:cover;
}
         </style>
      <script>
          $(document).ready(function () {
              /*carousel*/
              var owl = $("#owl");
              owl.owlCarousel({
                  items: 1, //10 items above 1000px browser width
                  itemsDesktop: [995, 1], //5 items between 1000px and 901px
                  itemsDesktopSmall: [767, 1], // betweem 900px and 601px
                  itemsTablet: [700, 1], //2 items between 600 and 0
                  itemsMobile: [479, 1], // itemsMobile disabled - inherit from itemsTablet option
                  navigation: true,
                  pagination: false
              });
          });

          jQuery(function () {
              $().UItoTop({ easingType: 'easeOutQuart' }); 
          });
      </script>
        
  
     </head>
     <body>
                          
     <form id="form1" runat="server">     
<!--==============================header=================================-->
<header id="bgimage">
    <div class="top_line"></div>
    <div class="container_12">
        <div class="grid_12 marg_1">
            <div class="grid_4 alpha">
                <h1><a class="logo" id="logoside" href="Default.aspx" style="margin-top:30px" ><img src="assets/images/logo1.png"/></a> </h1>
                
            </div>
            <div class="grid_8 omega">
                <div class="menuHolder">
                    <nav>
                        <ul class="sf-menu">
                            <li class="current"><a href="Default.aspx">Home</a></li>
                            <li><a href="AboutUs.aspx">About</a></li>
                            <li><a href="Discography.aspx">Gallery</a></li>
                            <li><a href="Offering.aspx">Offerings</a></li>
                            <li><a href="Contact.aspx">Contacts</a></li>
                             <%--<li><a href="AdminPanel/Login.aspx">Login</a></li>--%>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
     <div class="container_12">
        <div class="grid_12">
            <div class="slog">
                <p class="title"><span>We are</span> <br>Sangeent Sargam&#8217;s songs</p>
                <p class="style_1">Sangeet Sargam is a tarana for all, here we offer something for everyone. Book your free trial class today and let us help you live your dreams ! </p>
            </div>
        </div>
    </div>
</header>
<!--=======content================================-->
<section id="content">
    <div class="container_12">
        <div class="grid_12">
            <blockquote><h2 class="marg_2">&#8220; It's a flower of light in a field<br>
                of darkness And it's givin' me the <br/>
                strength to carry on &#8221;</h2>
                <p><span>Anju Pandey</span><br/>
              Music Teacher</p>
            </blockquote>
            <hr/>
        </div>
        <div class="clearfix"></div>
        <div class="grid_12 cont_1">
            <div class="grid_12 alpha">
                <h2><span>latest </span>show</h2>
                <div class="block_1">
                      <img alt="" src="assets/images/anj.jpeg" class="basic-shadow" style="height: 300px;width: 300px;"/><%--<img src="AdminPanel/anjimages/anj.jpeg" />--%>
                    <div class="txt_info">
                        <p class="title_2">Great Accomplishment</p>
                        <p class="title_1"><a href="#" class="link_1 animate">Gained a reputation for working well on a team.</a></p>
                        <p style="color:black">• Acted as a judge at various music competitions including NAZRANA-E-AVADH
            (organized by Avadh College), Lucknow Got Talent, Uttar Pradesh Got Talent, and many
more. <br/>
                        • Gave a performance at the 52nd anniversary of Hindi Sahitya Sammelan.<br />
                            • Have given various LIVE performances with Anup Jalota on stage and off stage.<br />
                            • Awarded the title of “Swar Kokila of Uttarakhand” in 2016.<br />
                            • Honored with “Uttarakhand Kokila” title on 10th November, 2018<br />
                            • Set a record in the Marvellous Records Book of India for singing continuously without
Music for 12 hours in May 2018.<br />
                   • Featured in various LIVE and recorded programs for Doordarshan Lucknow.
                        </p>
                    </div>
                </div>
            </div>
            <%--<div class="grid_4 omega">
                 <h2><span>Hot </span>News</h2>
                 <div class="block_2 st_1">
                    <time datetime="2013-10-05"><span>05</span><br/> Oct<br/> 2013</time>
                    <div class="txt_info">
                        <h4><a href="#" class="link_1 animate">Mes cuml dia <br/>sed inenias cet</a></h4>
                        <p>Mes cuml dia sed in lacus ut enia scet ingerto aliiqt es site aeismod.</p>
                    </div>
                 </div>
                 <div class="block_2">
                    <time datetime="2013-10-06"><span>06</span><br/> Oct<br/> 2013</time>
                    <div class="txt_info">
                        <h4><a href="#" class="link_1 animate">Mes cuml dia <br/>sed inenias cet</a></h4>
                        <p>Mes cuml dia sed in lacus ut enia scet ingerto aliiqt es site aeismod.</p>
                    </div>
                 </div>
            </div>--%>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
<div class="edu_fieldedu" style="background-color:white">
    <div class="container_12">
        <div class="grid_12">
            
            <div class="title_3">
                <span style="color:mediumvioletred">a</span>
                <span>Sangeet Sargam</span>
                <h2 style="color:mediumvioletred"><b>you have been waiting for!</b></h2>
            </div>
            <div class="block_3edu">
                <!-- Text content -->
                <div class="txt_infoedu">
                    <%--<h4>
                        <a href="#" class="link_1 animate">Mes cuml dia sed inenias ingerto lot aliiqtes dolore 
                        ipsum Mes cuml dia sed inenias ingerto.</a>
                    </h4>--%>
                    <div class="txt_list">
                        <ul style="color:black">
                            <li>Explore the joy of learning music at any age, right from the comfort of your home.</li>
                            <li>Our teachers are experts in their field and will help you reach your full potential.</li>
                            <li>Engage in real-time, one-on-one live sessions  with a dedicated teacher.</li>
                            <li>Visibly track your progress and stay on right track.</li>
                            <li>Earn a prestigious Sangeet Sargam Certification upon completion of the course.</li>
                            <li>Get certified by global music exam boards and top Indian music universities.</li>
                            <li>Access 24/7 support and quarterly progress meetings for feedback.</li>
                            <li>Select your preferred format, 1:1 or group sessions with loved ones.</li>
                        </ul>
                    </div>
                </div>
                <!-- Image content -->
                <img src="assets/images/msc.jpg" class="basic-shadow" style="height:320px;width:320px;border-radius:50%;margin-left:0px;margin-top:0px"/>
            </div>
                 </div>
    </div>
</div>
    
    </section>
<div class="about_box" style="background-color:#ffcccc">
    <div class="container_12">
        <div class="grid_12" style="display: flex; align-items: center; justify-content: center;">
             <div class="block_1">
            <!-- Image Section -->
            <img src="assets/images/Musicimg1.png" class="basic-shadow" style="height:300px;width:350px;/*border:5px solid #80ffff;*/ margin-right: 30px;" />

            <!-- Text and Button Section -->
            <div class="txt_info" style="text-align:left;">
                <div class="title_4">
                    <h1>A Fulfilled Career</h1>
                    <h2>In Music Education?</h2>
                </div>
                <p style="color:black">Sangeet Sargam is a premier musical website dedicated to teaching music across various genres. We offer comprehensive courses and resources for aspiring musicians of all levels. Whether you're a beginner or looking to refine your skills, Sangeet Sargam provides the tools and guidance you need to excel in your musical journey.</p>
                <a href="#" class="link_1 animate" style="display:block; font-size:24px; color:mediumorchid; padding:15px; text-decoration:none; font-weight:bold; margin-bottom:20px;">
                    Learn More about our Courses
                </a>
                <a href="Contact.aspx" class="button" style=" width:100px; padding:10px; text-align:center; background-color:mediumorchid; color:white; font-size:20px; font-weight:bold; border-radius:30px; text-decoration:none;">
                    Join Now
                </a>
            </div>
        </div>
            </div>
    </div>
</div>
      
<div class="about_box">
    <div class="container_12">
        <div class="grid_12">
            <div class="title_3">
                <span>shortly</span><br/>
                about us
            </div>
            <div class="block_3">
                <img src="assets/images/Image6.jpg" class="basic-shadow" style="height:250px;width:300px"/>
                <div class="txt_info">
                    <h3><a href="#" class="link_1 animate">Anju Pandey
                     </a></h3><br />
                    <p style="color:#ffffe6">To secure a teaching role where I can contribute to shaping students for a brighter future,
while leveraging opportunities for personal and professional growth within the organization</p>
                </div><br />
                <h4>QUICK LINKS</h4>
              
        <a href="Default.aspx" class="nav-link">Home</a>
        <a href="AboutUs.aspx" class="nav-link">About</a>
        <a href="Contact.aspx" class="nav-link">Contact </a>
        <a href="Discography.aspx" class="nav-link">Gallery</a>
        <a href="Offering.aspx" class="nav-link">Offerings</a>
            </div>
        </div>
    </div>
</div>

         <!--whatsapp Button-->
<a href="https://api.whatsapp.com/send?phone=7393940477" target="_blank" id="whatsapp-button">
    <img src="assets/images/w5%20[1].png" alt="Chat with us on WhatsApp" />
</a>

<!--=======footer=================================-->
<footer>
    <div class="container_12">
        <div class="wrapper">
            <div class="grid_7">
                <span>© <span id="copyright-year"></span>Powered By Dynamic Edge Consultants Pvt.Ltd. All Rights Reserved.</span>
                
            </div>
            <div class="grid_5 f-right">
                <ul class="soc-links">
                    <li><a class="soc-link1" href="#"></a></li>
                    <li><a class="soc-link2" href="#"></a></li>
                    <li><a class="soc-link3" href="#"></a></li>
                    <li><a class="soc-link4" href="#"></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</form>
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-7078796-5']);
    _gaq.push(['_trackPageview']);
    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'https://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();</script>
<!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><script>                                                                                                                                                                                        (function (w, d, s, l, i) { w[l] = w[l] || []; w[l].push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' }); var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f); })(window, document, 'script', 'dataLayer', 'GTM-P9FT69');</script><!-- End Google Tag Manager -->

</body>
</html>
<%--<a  href="https://api.whatsapp.com/send?phone=9560436464" target="_blank">--%>
<%-- https://livedemo00.template-help.com/wt_47547/index.html--%>
