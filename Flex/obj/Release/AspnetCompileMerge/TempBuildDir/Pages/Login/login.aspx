<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Flex.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">



<head runat="server">
    <link href="Button.css" rel="stylesheet" />
    <link href="login.css" rel="stylesheet" />

    <title>Welcome to FLEX</title>
</head>



<body>
<center><h1>FLEX LOGIN FORM</h1></center>

    <form id="form1" runat="server">
  <div class="imgcontainer">
      
      
      <img src="/Images/Flex.png" alt="Background" class="avatar"/>
  </div>

  <div class="container" id="login">
      <label for="uname"><b>Registration Number</b></label>
      <br />
         <asp:TextBox ID="txtRegNo" runat="server"></asp:TextBox>
      <br />
      <label for="psw"><b>Password</b></label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

    <div>
        
        <h3>Please select your account type:</h3>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Student" Checked="True" GroupName="Account_type" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Teacher" GroupName="Account_type" />  
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Officer" GroupName="Account_type" />
        
        
        
        
        
    
         
    </div>
      <div class="center">
      <asp:Button ID="loginButton" runat="server" Text="LOGIN" Height="51px" Width="918px" BorderStyle="Groove"  CssClass="button button2" OnClick="btnLogin_Click" />
        </div>
          <br />
        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
        
      
      
      <br />
      
      
  </div>

    </form>
</body>
</html>
