<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Discography.aspx.cs" Inherits="Discrography" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="assets/css/touchTouch.css">
<style>
.link_1 {
  position: absolute;
    bottom: 20px;
    left: 70px;
    background: white;
    color: black;
    padding: 5px;
    border-radius: 5px;
    font-size: 16px;
    font-weight: bold;
    min-width: 50%;
    text-align: center;
}   
 

 </style>
  <script src="assets/js/touchTouch.jquery.js"></script>
      <script>

          $(document).ready(function () {
              $('.magnifier').touchTouch();
          });

          jQuery(function () {
              $().UItoTop({ easingType: 'easeOutQuart' });
          });
    </script>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--=======content================================-->
<section id="content">
    <div class="container_12">
        <div class="grid_12">
            <h2 class="corr_1">Gallery</h2>
             <ul class="list_4" id="DivBindGallery" runat="server">         
                <%--<li class="grid_4 alpha">
                    <div class="thumbnail">
                        <figure class="figure" style="position: relative;"><a class="magnifier" href="assets/images/page3_big1.jpg"  data-lightgallery='item'><img alt="" src="assets/images/page3_pic1.jpg">
                        <span class="link_1 animate">Vestibulum</span>
                        </a></figure>
                        
                    </div>
                </li>  
                <li class="grid_4">
                    <div class="thumbnail">
                        <figure class="figure"><a class="magnifier" href="assets/images/page3_big2.jpg"><img alt="" src="assets/images/page3_pic2.jpg"></a></figure>
                       
                    </div>
                </li>--%>
                <%--<li class="grid_4 omega">
                    <div class="thumbnail">
                        <figure class="figure"><a class="magnifier" href="assets/images/page3_big3.jpg"><img alt="" src="assets/images/page3_pic3.jpg"></a></figure>
                       <div class="caption">
                            <span><a href="#" class="link_1 animate">quam quaerat</a></span>
                            <p>
                               <a href="#" class="icon_1"></a>
                               <a href="#" class="icon_2"></a>
                               <a href="#" class="icon_3"></a>
                            </p>
                        </div>
                    </div>
                </li>

                 <li class="grid_4 alpha">
                    <div class="thumbnail">
                        <figure class="figure"><a class="magnifier" href="assets/images/page3_big4.jpg"><img alt="" src="assets/images/page3_pic4.jpg"></a></figure>
                        <div class="caption">
                            <span><a href="#" class="link_1 animate">Lorem ipsum</a></span>
                            <p>
                               <a href="#" class="icon_1"></a>
                               <a href="#" class="icon_2"></a>
                               <a href="#" class="icon_3"></a>
                            </p>
                        </div>
                    </div>
                </li>
                <li class="grid_4">
                    <div class="thumbnail">
                        <figure class="figure"><a class="magnifier" href="assets/images/page3_big5.jpg"><img alt="" src="assets/images/page3_pic5.jpg"></a></figure>
                       <div class="caption">
                            <span><a href="#" class="link_1 animate">Ut tellus dolo</a></span>
                            <p>
                               <a href="#" class="icon_1"></a>
                               <a href="#" class="icon_2"></a>
                               <a href="#" class="icon_3"></a>
                            </p>
                        </div>
                    </div>
                </li>
                <li class="grid_4 omega">
                    <div class="thumbnail">
                        <figure class="figure"><a class="magnifier" href="assets/images/page3_big6.jpg"><img alt="" src="assets/images/page3_pic6.jpg"></a></figure>
                       <div class="caption">
                            <span><a href="#" class="link_1 animate">Integer rutru</a></span>
                            <p>
                               <a href="#" class="icon_1"></a>
                               <a href="#" class="icon_2"></a>
                               <a href="#" class="icon_3"></a>
                            </p>
                        </div>
                    </div>
                </li>

                 <li class="grid_4 alpha">
                    <div class="thumbnail">
                        <figure class="figure"><a class="magnifier" href="assets/images/page3_big7.jpg"><img alt="" src="assets/images/page3_pic7.jpg"></a></figure>
                        <div class="caption">
                            <span><a href="#" class="link_1 animate">consequat</a></span>
                            <p>
                               <a href="#" class="icon_1"></a>
                               <a href="#" class="icon_2"></a>
                               <a href="#" class="icon_3"></a>
                            </p>
                        </div>
                    </div>
                </li>
                <li class="grid_4">
                    <div class="thumbnail">
                        <figure class="figure"><a class="magnifier" href="assets/assets/images/page3_big8.jpg"><img alt="" src="assets/images/page3_pic8.jpg"></a></figure>
                       <div class="caption">
                            <span><a href="#" class="link_1 animate">exercitatione</a></span>
                            <p>
                               <a href="#" class="icon_1"></a>
                               <a href="#" class="icon_2"></a>
                               <a href="#" class="icon_3"></a>
                            </p>
                        </div>
                    </div>
                </li>--%>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    

</section>
 <!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><script>                                                                                                                                                                                         (function (w, d, s, l, i) { w[l] = w[l] || []; w[l].push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' }); var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f); })(window, document, 'script', 'dataLayer', 'GTM-P9FT69');</script><!-- End Google Tag Manager -->
    
</asp:Content>

