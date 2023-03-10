<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project7.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">


    <meta charset="utf-8">
    <title>login-admin</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style> * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  user-select: none;
}
.bg-img {
  background: url("/img/ttt.jpg");
  height: 100vh;
  background-size: cover;
  background-position: center;
}
.bg-img:after {
  position: absolute;
  content: "";
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background: rgba(0, 0, 0, 0.7);
}
.content {
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 999;
  text-align: center;
      padding: 86px 41px;
    width: 458px;
  transform: translate(-50%, -50%);
  background: rgba(255, 255, 255, 0.04);
  box-shadow: -1px 4px 28px 0px rgba(0, 0, 0, 0.75);
}
.content header {
  color: white;
  font-size: 33px;
  font-weight: 600;
  margin: 0 0 35px 0;
  font-family: "Montserrat", sans-serif;
}
.field {
  position: relative;
  height: 45px;
  width: 100%;
  display: flex;
  background: rgba(255, 255, 255, 0.94);
}
.field span {
  color: #222;
  width: 40px;
  line-height: 45px;
}
.field input {
  height: 100%;
  width: 100%;
  background: transparent;
  border: none;
  outline: none;
  color: #f36100;
  font-size: 16px;
  font-family: "Poppins", sans-serif;
}
.space {
  margin-top: 16px;
}
.show {
  position: absolute;
  right: 13px;
  font-size: 13px;
  font-weight: 700;
  color: #222;
  display: none;
  cursor: pointer;
  font-family: "Montserrat", sans-serif;
}
.pass-key:valid ~ .show {
  display: block;
}
.pass {
  text-align: left;
  margin: 10px 0;
}
.pass a {
  color: white;
  text-decoration: none;
  font-family: "Poppins", sans-serif;
}
.pass:hover a {
  text-decoration: underline;
}
.field input[type="submit"] {
  background: #f36100;
  border: 1px solid #f36100;
  color: white;
  font-size: 18px;
  letter-spacing: 1px;
  font-weight: 600;
  cursor: pointer;
  font-family: "Montserrat", sans-serif;
}
.field input[type="submit"]:hover {
 opacity:0.9;
}
.login {
  color: #f36100;
  margin: 20px 0;
  font-family: "Poppins", sans-serif;
}
.links {
  display: flex;
  cursor: pointer;
  color: white;
  margin: 0 0 20px 0;
}
.facebook,
.instagram {
  width: 100%;
  height: 45px;
  line-height: 45px;
  margin-left: 10px;
}

.inputq{
        background: #f36100;
    border: 1px solid #f36100;
    color: white;
    font-size: 18px;
    letter-spacing: 1px;
    font-weight: 600;
    cursor: pointer;
    font-family: "Montserrat", sans-serif;
    width:200px;
    height:40px;
}
.inputq:hover{
    opacity:0.9;
}
.links i {
  font-size: 17px;
}
i span {
  margin-left: 8px;
  font-weight: 500;
  letter-spacing: 1px;
  font-size: 16px;
  font-family: "Poppins", sans-serif;
}
.signup {
  font-size: 15px;
  color: white;
  font-family: "Poppins", sans-serif;
}
.signup a {
  color: #f36100;
  text-decoration: none;
}
.signup a:hover {
  text-decoration: underline;
}
.hh{
    color:#f36100;
}

    </style>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <div class="bg-img">
         <div class="content">
             <header>Login Now</header>
   <%-- <style>
        .bacgg
        {
            height:70%;
            background-image:url("../img/login.jpg" );
            background-size:cover;
        }
        .log
        {
            border:1px solid white;
            background-color:darkgray;
            opacity:0.8; 
            border-radius:10px;
            margin-bottom:150px;
        }
        .log:hover
        {
            opacity:0.9;    
        }
        .txtlog
        {
            color:orangered;
            font-size:20px;
            font-weight:bolder;
        }
        .logbtn
        {
            border:2px solid orangered;
            background-color:white;
            color:orangered;
            font-weight:bolder;
        }
        .Reglog
        {
            color:orangered;
            
        }
        .tit
        {
            text-align:center;
            display:inline-block;
        }
    </style>--%>
 
    <div class="bacgg">
        
        <div class="row ">
            <%--      <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Use a local account to log in.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
            --%>
            <%-- </p>
            </section>--%>
        </div>

        <div class="col-md-0" style="display:none;">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>

        <div class="container-fluid position-relative d-flex p-0">
            <!-- Spinner Start -->
            <%-- <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>--%>
            <!-- Spinner End -->


            <!-- Sign In Start -->
           

            <div >
                 <div>

            </div>
                <div >

                    <div >
                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                        </asp:PlaceHolder>
                         <div class="field">
        <span class="fa fa-user"></span>
                    

<%--                            <asp:Label runat="server" AssociatedControlID="Email" >Email</asp:Label>--%>
                            <div >
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="text-danger" ErrorMessage="The email field is required." />
                            </div>
                     
                             </div>
                        <div >
                            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label txtlog">Password</asp:Label>
                           
                                  <div class="field space">
                                      <span class="fa fa-lock"></span>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                             <span class="show">SHOW</span>
                                      </div>
                        </div>
                        <br />
                        <div >
                            <div >
                                <div >
                                    <asp:CheckBox runat="server" ID="RememberMe" />
                                    <asp:Label CssClass="hh"  runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                     
                                </div>
                            </div>
                        </div>
                        <div>
                            <div >
                                <asp:Button CssClass="inputq" runat="server" OnClick="LogIn" Text="Log in"  />



                            </div>
                            <p>Dont have an account?</p>
                                       
                                    
                        <asp:HyperLink  CssClass="hh" runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register now</asp:HyperLink>

                        </div>
                    </div>
                   
                        <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                   <%-- <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <a href="index.html" class="">
                                <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>DarkPan</h3>
                            </a>
                            <h3>Sign In</h3>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Password</label>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <a href="">Forgot Password</a>
                        </div>
                        <button type="submit" class="btn btn-primary py-3 w-100 mb-4">Sign In</button>
                        <p class="text-center mb-0">Don't have an Account? <a href="">Sign Up</a></p>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- Sign In End -->

                 </div>

         </div>


















    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</asp:Content>
