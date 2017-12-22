<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show_map.aspx.cs" Inherits="show_map" MasterPageFile="~/MasterPage.master"%>


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
    
        <script
src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
    function initialize() {
        var mapProp = {
            center: new google.maps.LatLng(22.8166667, 89.55),
            zoom: 5,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
    <div>&nbsp;&nbsp;&nbsp;</div>
    <div id="googleMap" style="width:850px;height:500px; align-self:center;  "></div>
    
    </asp:Content>
