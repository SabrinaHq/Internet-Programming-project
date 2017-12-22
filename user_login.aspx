<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="user_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .button
         {
  background: #eb6ae7;
  background-image: -webkit-linear-gradient(top, #eb6ae7, #520e5c);
  background-image: -moz-linear-gradient(top, #eb6ae7, #520e5c);
  background-image: -ms-linear-gradient(top, #eb6ae7, #520e5c);
  background-image: -o-linear-gradient(top, #eb6ae7, #520e5c);
  background-image: linear-gradient(to bottom, #eb6ae7, #520e5c);
  -webkit-border-radius: 17;
  -moz-border-radius: 17;
  border-radius: 17px;
  font-family: Georgia;
  color: #ffffff;
  font-size: 30px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
  
}
         .button:hover {
  background: #bb60c9;
  text-decoration: none;
}
         .textbox
  {
   border-color:#cccccc;
  border-style:solid;
   padding:8px;
    font-size:20px;
     border-width:5px;
      border-radius:8px; 
      box-shadow: 8px 8px 8px 0px rgba(42,42,42,.75);
       font-family:monospace;
        font-weight:bold; 
         } 
		 .textbox:focus { outline:none; } 
    </style>
    
</head>
<body style="background:#292931; background-repeat:no-repeat; center; ">
    <form id="form1" runat="server">
        <div style="height: 350px; width: 800px; margin-top: 113px; font-weight: 700; font-size: xx-large; color: #FFFFFF; ">
        <asp:Login ID="Login2" runat="server" OnAuthenticate="Login2_Authenticate" Height="390px" Width="528px" TitleText="" style="text-align: center; margin-left: 268px; color: #FFFFFF; font-size: xx-large;">
            <LoginButtonStyle BorderStyle="Groove" CssClass="button" />
            <TextBoxStyle BorderStyle="Groove" CssClass="textbox" />
        </asp:Login>
            <div style="margin-left:350px; color: #000000; background-color: #000000;">
        <asp:HyperLink ID="HyperLink_register0" runat="server" NavigateUrl="~/registration.aspx" style="font-size: x-large; color: orchid; font-weight: 700; background-color: black;">No account? Click here to register!</asp:HyperLink>
                </div>
        </div>
    </form>
</body>
</html>



