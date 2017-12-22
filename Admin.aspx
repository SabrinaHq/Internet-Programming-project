<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 170px;
        }
        .auto-style4 {
            height: 19px;
            width: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 77%; height: 169px;">
            <tr>
                <td class="auto-style3">ID</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxid" runat="server" Width="250px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style4">Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxname" runat="server" Width="250px"></asp:TextBox>
                </td>
            
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxaddress" runat="server" Width="250px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style4">contactNo</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxcontact" runat="server" Width="250px"></asp:TextBox>
                </td>
             
            </tr>
            
            <tr>
                <td class="auto-style4">image</td>
                <td class="auto-style1">
                     <input id="Upload" type="file" runat="server" />
                </td>
              
            </tr>
            <tr>
                <td class="auto-style4">lat</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxlat" runat="server" Width="250px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style4">long</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxlong" runat="server" Width="250px"></asp:TextBox>
                </td>
               
            </tr>
            
        </table>
        <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" style="margin-left: 110px" Text="submit" Width="140px" />

    </form>
</body>
</html>

