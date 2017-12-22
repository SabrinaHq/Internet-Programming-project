<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
    
         .textbox
  {
   border-color:#cccccc;
  border-style:solid;
   padding:0px;
    font-size:18px;
     border-width:2px;
      border-radius:0px; 
      box-shadow: 8px 8px 8px 0px rgba(42,42,42,.75);
       font-family:monospace;
        font-weight:bold; 
         } 
		 .textbox:focus { outline:none; } 


          .auto-style1 {
            text-align: left;
            font-size: medium;
            height: 83px;
            margin-top: 3px;
        }
        .auto-style3 {
            width: 272px;
            color: #000000;
            text-align: right;
        }
        .auto-style5 {
            width: 272px;
            color: #FFFFFF;
            height: 62px;
            text-align: right;
            font-size: x-large;
        }
        .auto-style6 {
            height: 62px;
        }
        .auto-style8 {
            height: 39px;
        }
        .auto-style10 {
            width: 272px;
            color: #FFFFFF;
            text-align: right;
            font-size: x-large;
        }
    </style>
    <script type="text/javascript">
        function CheckPasswordStrength(password) {
            var password_strength = document.getElementById("password_strength");

            //TextBox left blank.
            if (password.length == 0) {
                password_strength.innerHTML = "";
                return;
            }

            //Regular Expressions.
            var regex = new Array();
            regex.push("[A-Z]"); //Uppercase Alphabet.
            regex.push("[a-z]"); //Lowercase Alphabet.
            regex.push("[0-9]"); //Digit.
            regex.push("[$@$!%*#?&]"); //Special Character.

            var passed = 0;

            //Validate for each Regular Expression.
            for (var i = 0; i < regex.length; i++) {
                if (new RegExp(regex[i]).test(password)) {
                    passed++;
                }
            }

            //Validate for length of Password.
            if (passed > 2 && password.length > 8) {
                passed++;
            }

            //Display status.
            var color = "";
            var strength = "";
            switch (passed) {
                case 0:
                case 1:
                    strength = "Weak";
                    color = "lightred";
                    break;
                case 2:
                    strength = "Good";
                    color = "darkorange";
                    break;
                case 3:
                case 4:
                    strength = "Strong";
                    color = "green";
                    break;
                case 5:
                    strength = "Very Strong";
                    color = "darkgreen";
                    break;
            }
            password_strength.innerHTML = strength;
            password_strength.style.color = color;
        }
</script>


</head>
<body style="background-image: url(assets/img/Background.jpg) ; background-repeat:no-repeat; center; ">
    <form id="form1" runat="server">
    <div style="margin-bottom: 0px">
    
        &nbsp;<table class="auto-style1" style="padding-left:250px","padding-right:250px";"padding-top:25px";>
            <tr>
                <td class="auto-style5"><strong>User Name:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="250px" Height="30px" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User name is a must!" ForeColor="#FF99FF" Height="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <br />
            <tr>
                <td class="auto-style5"><strong>Email:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email required" ForeColor="#FF99FF" Height="20px" ></asp:RequiredFieldValidator>&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter valid email ID" ForeColor="#FF99FF"  Height="20px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Password:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPW" runat="server" Height="30px" Width="250px"  TextMode="Password" CssClass="textbox" onkeyup="CheckPasswordStrength(this.value)"></asp:TextBox>
                    <span id="password_strength" style="font-size:x-large; font-weight:bold;"></span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPW" ErrorMessage="Password required" ForeColor="#FF99FF" Height="20px" CssClass="auto-style6"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Confirm password:</strong> </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxConfirmPW" runat="server" Height="30px" Width="250px" TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidatorPWmatch" runat="server" ControlToCompare="TextBoxPW" ControlToValidate="TextBoxConfirmPW" ErrorMessage="Both passwords should match!" ForeColor="#FF99FF" Height="20px"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Country:</strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Height="30px" Width="250px">
                        <asp:ListItem>Select country</asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                        <asp:ListItem>United Kingdom</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>Malaysia</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Select your country name" ForeColor="#FF99FF" Height="20px" InitialValue="Select country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Postal code:</strong> </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPostalCode" runat="server" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"> <strong>Contact number:</strong> </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxContactNumber" runat="server" Height="30px" Width="250px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    
    <p style="auto-style; padding-left:550px; background:center;">
        &nbsp;<asp:Button ID="ButtonSignUp" runat="server" Height="32px" style="text-align: center; font-size: large; font-weight: 700;" Text="Sign Up" Width="175px" OnClick="ButtonSignUp_Click" ForeColor="Black" />
        </p>
    </form>
    </body>
    </html>
    
       
   


    