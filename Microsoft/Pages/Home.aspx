<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Microsoft.Home" %>
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="title">
			<h2>Welcome to our website</h2>
		</div>
		<p> Microsoft Corporation (MS) is an American multinational technology company with headquarters in Redmond, Washington. It develops, manufactures, licenses, supports and sells computer software, consumer electronics, personal computers, and related services. Its best known software products are the Microsoft Windows line of operating systems, the Microsoft Office suite, and the Internet Explorer and Edge web browsers. Its flagship hardware products are the Xbox video game consoles and the Microsoft Surface lineup of touchscreen personal computers. As of 2016, it is the world's largest software maker by revenue, and one of the world's most valuable companies. The word "Microsoft" is a portmanteau of "microcomputer" and "software".Microsoft is ranked No. 30 in the 2018 Fortune 500 rankings of the largest United States corporations by total revenue.</p>
	
  
    
    <div id="portfolio" class="container">
		<div class="column1">
			<div class="box"> <a href="#"><img src="~/Images/img1.jpg" alt="" class="image image-full" runat ="server"/></a>
				<h3>Vestibulum venenatis</h3>
				<p>Fermentum nibh augue praesent a lacus at urna congue rutrum.</p>
				</div>
		</div>
		<div class="column2">
			<div class="box"> <a href="#"><img src="~/Images/img2.jpg" alt="" class="image image-full" runat ="server"/></a>
				<h3>Praesent scelerisque</h3>
				<p>Vivamus fermentum nibh in augue praesent urna congue rutrum.</p>
				</div>
		</div>
		<div class="column3">
			<div class="box"> <a href="#"><img src="~/Images/img3.jpg" alt="" class="image image-full" runat ="server"/></a>
				<h3>Donec dictum metus</h3>
				<p>Vivamus fermentum nibh in augue praesent urna congue rutrum.</p>
				</div>
		</div>
		<div class="column4">
			<div class="box"> <a href="#"><img src="~/Images/img4.jpg" alt="" class="image image-full" runat ="server"/></a>
				<h3>Mauris vulputate dolor</h3>
				<p>Rutrum fermentum nibh in augue praesent urna congue rutrum.</p>
				</div>
		</div>
	</div>
</asp:Content>