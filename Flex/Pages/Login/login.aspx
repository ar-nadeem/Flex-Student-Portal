<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Flex.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">



<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
<%--    <link href="./Button.css" rel="stylesheet" />
    <link href="./login.css" rel="stylesheet" />--%>
    <title>Welcome to FLEX</title>
</head>



<body  style="background-image: url('/Images/bg-main.jpg');background-size:50%">
<center>
    <h1 class="display-4">FLEX LOGIN FORM</h1>
</center>

    <form id="form1" runat="server">
  <div class="imgcontainer">
      
      
      <center><img src="flex.png" alt="Background" class="img-fluid" style="width: 20%"/></center>
  </div>

  <div class="container" id="login"  style="background-color: rgb(0, 0, 0,0.5);">
      <label for="uname"><b class="text-white">Registration Number (20l-xxxx)</b></label>
      <br />
         <asp:TextBox ID="txtRegNo" runat="server"></asp:TextBox>
      <br />
      <label for="psw"><b class="text-white">Password</b></label>
      <br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

    <div>
        
        <h3 class="text-white">Please select your account type:</h3>
        <div class="text-white">

        
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Student" Checked="True" GroupName="Account_type" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Teacher" GroupName="Account_type" />  
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Officer" GroupName="Account_type" />
            </div>
         
    </div>



      <div class="center" style="width:50%">
                <asp:Button ID="loginButton" runat="server" Text="LOGIN" Height="51px" Width="918px" BorderStyle="Groove"  class="btn btn-primary" OnClick="btnLogin_Click" />
        </div>

          <br />
        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
        
      
      
      <br />
      
      
  </div>

    </form>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>

</html>
