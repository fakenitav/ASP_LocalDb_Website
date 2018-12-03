<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Microsoft.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" DisplayRememberMe="False" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="224px" OnAuthenticate="Login1_Authenticate" Width="380px">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>
    <br><br>
     <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />

</asp:Content>
