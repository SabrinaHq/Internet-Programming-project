<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/MasterPage.master"%>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style1">
    
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
        <table class="auto-style" style="padding-left:250px; height: 162px; margin-right: 0px;padding-right:250px";>&nbsp;
            <tr>
                <td class="auto-style5" ><strong>User Name: </strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="240px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextboxUsername" ErrorMessage="Please enter user name" ForeColor="#FF99FF" Height="20px" style="font-size: large"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Password: </strong></td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="240px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Textbox" runat="server" ControlToValidate="TextboxPassword" ErrorMessage="Please enter password" ForeColor="#CC0000" style="font-size: large"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button_login" runat="server" Height="32px" OnClick="Button_login_Click" style="text-align: center; font-size: large; font-weight: 700;" Text="Login" Width="124px" />
                    <asp:CheckBox ID="CheckBox_rememberMe" runat="server" style="font-weight: 700; font-size: large" Text="Remember me?" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink_register0" runat="server" NavigateUrl="~/registration.aspx" style="font-size: x-large; color: #660033; font-weight: 700; background-color: #FFCCFF;">New user register here!</asp:HyperLink>
                </td>
                <td></td>
            </tr>
            </table>
  </asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
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
</asp:Content>