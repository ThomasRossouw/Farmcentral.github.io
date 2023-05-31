<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FarmCentral.Login" %>
    <link rel='icon' href='favicon.ico' type='image/x-icon'>
       <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="CSS/Style.css" type="text/css" rel="stylesheet" />
<!DOCTYPE html>

        <title>Login</title>
      <link rel="icon" type="image/x-icon" href="/Images/favicon.ico">

    <style type="text/css">
        .auto-style1 {
            width: 316px;
            height: 276px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            height: 33px;
        }

        .auto-style5 {
            text-align: center;
            font-size: xx-large;
        }


    </style>


<form id="form1" runat="server">


<!--Just the logo.. Don't mind this-->
	<!-- Header -->
		<div id="top" class="row">
			
			<!-- Logo -->
			<div id="logo" >
				<a ><img src="Images/remove.png" class="auto-style1" style="border: 0px" ></a>
			</div>
			
			
		</div>
<h1 class="auto-style5">Login</h1>


    <div class="text-wrapper">
        <table class="auto-style2">
            <tr>
                <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login Employee" BackColor="#0066FF" ForeColor="White" />
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login Farmer" BackColor="#33CC33" ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
                </td>
            </tr>

        </table>
    <ul class="social-icons">
    <li><a href="http://www.facebook.com"><img src='images/facebook1.svg' /></a></li>
    <li><a href="http://www.twitter.com"><img src='images/twitter.svg' /></a></li>
    <li><a href="http://www.youtube.com"><img src='images/youtube.svg' /></a></li>
</ul>
     
    </div>
       
    






</form>




