<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Ajax.aspx.cs" Inherits="Microsoft.Pages.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> AJAX </h1> <br><br>
            
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
      
            <asp:Label runat="server" Text="String 1"></asp:Label> &nbsp;&nbsp; <asp:TextBox ID="string1" runat="server" SkinID="ajax1" AutoPostBack="True"></asp:TextBox> <br><br>
            <asp:Label runat="server" Text="String 2"></asp:Label> &nbsp;&nbsp; <asp:TextBox ID="string2" runat="server" SkinID="ajax2" AutoPostBack="True"></asp:TextBox> <br /> <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Add" runat="server" Text="Append" OnClick="Append_Click" />
            <br><br>
            <asp:Label ID="Result" runat="server" Text="Result"></asp:Label>
        </ContentTemplate>
   </asp:UpdatePanel>

</asp:Content>
