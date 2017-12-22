<%@ Page Language="C#" AutoEventWireup="true" CodeFile="my places.aspx.cs" Inherits="my_places" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Repeater ID="Repeater1" runat="server">
                     <ItemTemplate>
                         &nbsp;
                         
                             &nbsp;
                         
                         
                         <a href="<%#Eval("Name") %>"> <%#Eval("Name") %></a>
                        
                         <br />
                      <h5 style="margin-left:100px;"> <%#Eval("address")%></h5> 
                         <br />
                         <br />
                     </ItemTemplate>
                 </asp:Repeater>
    </div>
    </form>
</body>
</html>
