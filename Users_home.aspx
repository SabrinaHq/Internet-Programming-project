<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users_home.aspx.cs" Inherits="Users_home" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Discover Around</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
     <!-- FLEXSLIDER CSS -->
<link href="assets/css/flexslider.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />    
  <!-- Google	Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />
</head>
<body >
   
    <form id="form1" runat="server">
   
 <div class="navbar navbar-inverse navbar-fixed-top " id="menu">
        <div class="container">
            <div class="navbar-header">Discover Around
            </div>
           <div class="top-nav">
					<ul>
                        <li ><asp:Label ID="User" runat="server" Text="Welcome! " style="font-size: large; font-weight: 500; color:orange;  text-align:center; padding-top:27px;padding-right:10px;" Height="80px" Width="100px"></asp:Label></li>
						<li class="active"><a href="index.html">Home</a></li>
						
						<li><a href="contact.html">Contact</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><asp:Button ID="Button_login" runat="server" Text="LOG IN" Height="36px" OnClick="Button_login_Click" Width="78px" Visible="False" />
                            <asp:Button ID="Button_logout" runat="server" Text="LOG OUT" OnClick="Button_logout_Click" />
                        </li>
					</ul>
				</div>
           
        </div>
    </div>
   


<div id="contact-sec"   >
           <div class="overlay">
 <div class="container set-pad">
     <div>
      <div class="row text-center">
          

             

                  </div>
                 <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                     
                   
                      </div>
          </div>
        
             <!--/.HEADER LINE END-->
                </div>
          </div> 
       </div>
     <div class="container">
             <div class="row set-row-pad"  >
    <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 " data-scroll-reveal="enter from the bottom after 0.4s">

                    <h2 ><strong>Contact Us</strong></h2>
        <hr />
                    <div ">
    
                        <h4><strong>Call:</strong>  + 8801731240408 </h4>
                        <h4><strong>Email: </strong>sabrina.hq@gmail.com</h4>
                    </div>


                </div>
                 <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1" data-scroll-reveal="enter from the bottom after 0.4s">

                    <h2 ><strong>Social Conectivity </strong></h2>
        <hr />
                    <div >
                        <a href="#">  <img src="assets/img/Social/facebook.png" alt="" /> </a>
                     <a href="#"> <img src="assets/img/Social/google-plus.png" alt="" /></a>
                     <a href="#"> <img src="assets/img/Social/twitter.png" alt="" /></a>
                    </div>
                    </div>


                </div>
                 </div>
     <!-- CONTACT SECTION END-->
    <div id="footer">
          © All rights preserved by Sabrina Haque, Roll:1307005, Dept. of CSE, KUET.</div>
     <!-- FOOTER SECTION END-->
   
    <!--  Jquery Core Script -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>
    <!--  Flexslider Scripts --> 
         <script src="assets/js/jquery.flexslider.js"></script>
     <!--  Scrolling Reveal Script -->
    <script src="assets/js/scrollReveal.js"></script>
    <!--  Scroll Scripts --> 
    <script src="assets/js/jquery.easing.min.js"></script>
    <!--  Custom Scripts --> 
         <script src="assets/js/custom.js"></script>
    </form>
</body>
</html>



