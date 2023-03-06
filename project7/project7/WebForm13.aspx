<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="project7.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
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

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bg-img">
  <div class="content">
    <header>Login Now</header>
    <form action="#">
      <div class="field">
        <span class="fa fa-user"></span>
<%--        <input type="text" required placeholder="Email or Phone">--%>
          <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
           <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="text-danger" ErrorMessage="The email field is required." />
      </div>
      <div class="field space">
        <span class="fa fa-lock"></span>
<%--        <input type="password" class="pass-key" required placeholder="Password">--%>
                              <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control pass-key" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
        <span class="show">SHOW</span>
      </div>
   
        <br />
      <div class="field">
   <%--     <input type="submit" value="LOGIN">--%>
    <asp:Button runat="server"  Text="Log in" CssClass="btn btn-default logbtn" />

      </div>
    </form>
   <br />

    <div class="signup">Don't have account?
 <asp:HyperLink CssClass="Reglog" runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register now</asp:HyperLink>

      <a href="#">Signup Now</a>
    </div>
  </div>
</div>


    <script>
        const pass_field = document.querySelector(".pass-key");
        const showBtn = document.querySelector(".show");
        showBtn.addEventListener("click", function () {
            if (pass_field.type === "password") {
                pass_field.type = "text";
                showBtn.textContent = "HIDE";
                showBtn.style.color = "#3498db";
            } else {
                pass_field.type = "password";
                showBtn.textContent = "SHOW";
                showBtn.style.color = "#222";
            }
        });

    </script>
</asp:Content>
