<%@ Page Title="" Language="C#" MasterPageFile="~/All Pages/User Pages/NavbarUser.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Chocolate_Shop.All_Pages.User_Pages.SignUp1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style%20CSS/SignUp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="inner">
            <div class="form_now">
                <h3>הרשמה</h3>

                <div class="form-holder active">
                    <asp:TextBox ID="Textname" placeholder="השם המלא" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textname"
                            ErrorMessage="שדה חובה" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ErrorMessage="מותר רק תווים" ForeColor="DarkRed"
                            ControlToValidate="Textname" ValidationExpression="[A-Za-z\s\u0590-\u05FF\s]*">
                        </asp:RegularExpressionValidator>
                </div>

                <div class="form-holder">
                    <asp:TextBox ID="textemail" placeholder="אימייל" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textemail"
                        ErrorMessage="שדה חובה" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" 
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="textemail" ErrorMessage="פורמט דואל לא חוקי" ForeColor="#CC0000">
                    </asp:RegularExpressionValidator>
                </div>

                <div class="form-holder">
                    <asp:TextBox ID="textphone" placeholder="מספר טלפון" runat="server"
                        class="form-control" AutoCompleteType="HomePhone" minlength="10" MaxLength="10" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textphone"
                        ErrorMessage="שדה חובה" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="הזן מספר טלפון חוקי" ControlToValidate="textphone" 
                        ValidationExpression="^[0-9]*(\.[0-9]{0,2})?$" ForeColor="#CC0000">
                    </asp:RegularExpressionValidator>
                </div>

                <div class="form-holder">
                    <asp:TextBox ID="textpassword" runat="server" placeholder="סיסמה" TextMode="Password" class="form-control" Style="font-size: 15px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textpassword"
                        ErrorMessage="שדה חובה" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="לפחות 4 תווים. ולפחות מספר אחד או סמל מיוחד (.@#$&*^) " ControlToValidate="textpassword" 
                        ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$" Font-Size="9" ForeColor="Red">
                    </asp:RegularExpressionValidator>
                </div>

                <div class="form-holder">
                    <asp:TextBox ID="textconfirmpassword" runat="server" placeholder="אימות סיסמה" TextMode="Password"
                        class="form-control" Style="font-size: 15px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="שדה חובה" 
                        ControlToValidate="textconfirmpassword" ForeColor="#CC0000">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="image-holder">
                <img src="../../Images/DesignImage/registration-form-4.jpg" alt="signup-image" />
                <div class="form-login">
                    <asp:Button ID="btnsignup" runat="server" Text="הרשמה" CssClass="button-signup" 
                        OnClick="btnsignup_Click" />
                </div>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ControlToCompare="textpassword" 
                    ErrorMessage="סיסמה לא מתאימה" ControlToValidate="textconfirmpassword">
                </asp:CompareValidator>
            </div>

        </div>
    </div>

</asp:Content>

