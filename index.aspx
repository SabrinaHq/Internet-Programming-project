<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var mapCanvas = document.getElementById('map_canvas');
            var mapOptions = {
                center: new google.maps.LatLng(22.900713, 89.501340),
                zoom: 14,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(mapCanvas, mapOptions)
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

</head>
<body >
   
    <form id="form1" runat="server">
   
 <div class="navbar navbar-inverse navbar-fixed-top " id="menu">
        <div class="container">
            <div class="navbar-header">Discover Around
            </div>
           <div class="top-nav">
					<ul>
                        <li ><asp:Label ID="User" runat="server"  style="font-size: large; font-weight: 700; color:orange;  text-align:left; padding-top:27px;padding-right:10px; margin-right: 10px;" Height="80px"></asp:Label></li>
						<li class="active"><a href="index.aspx">Home</a></li>
						
						<li><a href="#contact">Contact</a></li>
                       
                        <li><asp:Button ID="Button_login" runat="server" Text="LOG IN" Height="36px" OnClick="Button_login_Click" Width="78px" BorderStyle="Groove" BackColor="#FFFFCC" />
                            <asp:Button ID="Button_logout" runat="server" Text="LOG OUT" OnClick="Button_logout_Click" BackColor="#FFFFCC" BorderStyle="Groove" />
                        </li>
					</ul>
				</div>
           
        </div>
    </div>
   


<div id="contact-sec"   >
           <div class="overlay">
 <div class="container set-pad">
      <div class="row text-center">
                 <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                     form id="form1" runat="server">
    


        <div>
        
        
            <div>
                <div><h3><strong><br />Now the world is your feet! Come and find your desired places in any corner of the world!!</strong> </h3></div>
                <div>&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /><br /></div>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="70px" Width="350px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Select place</asp:ListItem>
        <asp:ListItem>Khulna</asp:ListItem>
        <asp:ListItem>Dhaka</asp:ListItem>
    </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server" Height="70px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="350px">
        <asp:ListItem>Looking for...</asp:ListItem>
        <asp:ListItem>Restaurants</asp:ListItem>
        <asp:ListItem>Hospitals</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button_submit" runat="server" Text="Show" OnClick="Button_submit_Click" />
            </div>

       
    </div> 
                     <br />
                     <br />
                     <div style="background:rgba(32, 48, 55, 0.51); height:500px;">
                         <h1 style="text-align:center; font-family:'Baskerville Old Face'; font-weight:bold; color:antiquewhite; margin-top:10px; margin-bottom:20px;"> TOP PICKS </h1>
                         
                         
                         <div style="height:400px;">
                              <marquee onmouseover="stop();" onmouseout="start();" scrollAmount="7" 
                    scrollDelay="100"  direction="up" width="100%" 
                    style="margin-top: 0px; height:inherit; font-size: x-large;" text-align:center; >
                 <asp:Repeater ID="Repeater1" runat="server">
                     <ItemTemplate>
                         &nbsp;
                         
                             &nbsp;
                         
                         
                         <a href="<%#Eval("Name") %>" style="font-size:larger; color:beige;"> <%#Eval("Name") %></a>
                        
                         <br />
                      <h5 style="margin-left:100px;"> <%#Eval("address")%></h5> 
                         <br />
                         <br />
                     </ItemTemplate>
                 </asp:Repeater></marquee>
                             </div>
                         </div>
                     

    </form>
                     
                     
                     
                 </div>

             </div>
             <!--/.HEADER LINE END-->
                </div>
          </div> 
       </div>

     <div id="contact" style="text-align:center;">
         <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line" >CONTACT US  </h1>
                     <p data-scroll-reveal="enter from the bottom after 0.3s">
         
                  <div id="map_canvas" class="map_canvas" style=" width: 1400px;height: 400px; margin-left:0px; ">
             
                       
                            </div>          
                        
    
     <div class="container">
         
             <div class="row set-row-pad"  >
    <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 " data-scroll-reveal="enter from the bottom after 0.4s">
        
                    
        <hr />
                   <div ">
                        <h4>Khulna University of Engineering & Technology, Khulna</h4>
                        <h4>Bangladesh.</h4>
                        <h4><strong>Call:</strong>  +8801731240408</h4>
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





 