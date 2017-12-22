<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="70px" Width="350px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Enabled="False">Select place</asp:ListItem>
        <asp:ListItem>Khulna</asp:ListItem>
        <asp:ListItem>Dhaka</asp:ListItem>
    </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server" Height="70px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="350px">
        <asp:ListItem Enabled="False">Looking for...</asp:ListItem>
        <asp:ListItem>Restaurants</asp:ListItem>
        <asp:ListItem>Hospitals</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button_submit" runat="server" Text="Show" OnClick="Button_submit_Click" />
    </asp:Content>


