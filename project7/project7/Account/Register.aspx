<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project7.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
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
    
        padding: 0px 110px;
    width: 495px;
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
    </style>
    <%--    <h2><%: Title %>.</h2>--%>

      <div class="bg-img">
         <div class="content">
             <br />
             <header>Register Now</header>
                     <div class="container-fluid position-relative d-flex p-0">


    <div>
             
        <div >
     
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>

        <div >
         


<%--

            <div>
                <asp:Label runat="server" AssociatedControlID="FirstName"  CssClass="col-md-2 control-label txtlog txt">FirstName</asp:Label>
                <div class="col-md-10">
                                      <div class="field">
        <span class="fa fa-user"></span>
                    <asp:TextBox runat="server" ID="FirstName" />
              </div>
                </div>
            </div>--%>


                    <div >
                <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label txtlog txt" ></asp:Label>
                <div >
                                      <div class="field">
        <span class="fa fa-user"></span>
                    <asp:TextBox runat="server"  placeholder="FirstName" ID="FirstName" />
              </div>
                </div>
            </div>




                  <div >
                <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label txtlog txt" ></asp:Label>
                <div >
                                      <div class="field">
        <span class="fa fa-user"></span>
                    <asp:TextBox runat="server" placeholder="LastName" ID="LastName" />
              </div>
                </div>
            </div>









<%--
            <div>
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label txtlog txt">Email</asp:Label>
                <div class="col-md-10">
                                      <div class="field">
        <span class="fa fa-user"></span>
                    <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The email field is required." />
                                          </div>
                </div>
            </div>--%>

            
                  <div >
                <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label txtlog txt" ></asp:Label>
                <div >
                                      <div class="field">
        <span class="fa fa-user"></span>
                       <asp:TextBox runat="server" placeholder="Email" ID="Email" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The email field is required." />
              </div>
                </div>
            </div>












             <%--<div>
                <asp:Label runat="server" AssociatedControlID="PhoneNumber" CssClass="col-md-2 control-label txtlog txt">PhoneNumber</asp:Label>
                <div class="col-md-10">
                                      <div class="field">
        <span class="fa fa-user"></span>
               
                                          </div>
                                          </div>
                 </div>

                       <div >--%>
                <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label txtlog txt" ></asp:Label>
                <div >
                                      <div class="field">
        <span class="fa fa-user"></span>
                    <asp:TextBox ID="PhoneNumber" placeholder="PhoneNumber" runat="server" ></asp:TextBox>

                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhoneNumber" ErrorMessage="Invalid Phone Number" ValidationExpression="((079)|(078)|(077)){1}[0-9]{7}" ForeColor="Red"></asp:RegularExpressionValidator>
                
              </div>
                </div>
            </div>







            
            <div >
                <asp:Label runat="server" AssociatedControlID="Password" ></asp:Label>
                <div >
                                      <div class="field">
        <span class="fa fa-user"></span>
                    <asp:TextBox runat="server" placeholder="Password" ID="Password" TextMode="Password" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
               </div>
                                          </div>
            </div>









      
             <div>
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword"></asp:Label>
                <div >
                                      <div class="field">
        <span class="fa fa-user"></span>
                    <asp:TextBox runat="server" placeholder="Confirm Password" ID="ConfirmPassword" TextMode="Password"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                          </div>
                                   

                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
              </div>
                                      
            </div>









            <br />



            <div>
                <div>
                    <asp:Button  CssClass="inputq" runat="server" OnClick="CreateUser_Click" Text="Register" />
                </div>
            </div>
            
        </div>
        </div>
    </div>
          </div>
                                   </div>

              

</asp:Content>
