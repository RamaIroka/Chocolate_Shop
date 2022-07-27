<%@ Page Title="" Language="C#" MasterPageFile="~/All Pages/User Pages/NavbarUser.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Chocolate_Shop.All_Pages.User_Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../../Style%20CSS/login.css" rel="stylesheet" />

</asp:Content>

 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <div class="wrapper">
    <div class="inner">
        <div class="row">
            <div class="col-md-offset-4 col-md-4 col-sm-offset-3 col-sm-6">
                <div class="form-container">
                    <div class="form-horizontal">
                        <h3 class="title">כניסה</h3>
                        <div class="form-group">
                            <span class="input-icon"><i class="fa fa-user"></i></span>
                            <asp:TextBox ID="textemail" runat="server" class="form-control" AutoCompleteType="Email"
                                placeholder="אימייל"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <span class="input-icon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="textpassword" runat="server" placeholder="סיסמה" class="form-control"
                                TextMode="Password"></asp:TextBox>
                        </div>
                        <span class="forgot-pass"><a href="#">שכחתי סיסמה?</a></span>
                        <button class="btn signin">כניסה</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>

