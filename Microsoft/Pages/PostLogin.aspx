<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PostLogin.aspx.cs" Inherits="Microsoft.Pages.PostLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    Welcome <asp:Label ID="loginname" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="userType" runat="server" BackColor="Black" ForeColor="White" Height="40px" Width="200px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    <br />
        <asp:Button ID="logoutbtn" runat="server" OnClick="logoutbtn_Click" Text="Logout" />
    <br />
</div>

</asp:Content>
