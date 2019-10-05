<%@ page language="C#" autoeventwireup="true" inherits="Login, App_Web_r5z31h4q" %>

<%@ Register Src="~/UserControl/Message.ascx" TagName="MessageBox" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />

    <link rel="shortcut icon" type="image/x-icon" href="images/logo/CeaseFireLogo.jpg" />
    <title>LogIn</title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
    <style type="text/css">
        .card-profile .card-avatar {
            border-radius: 0.239rem;
        }
    </style>
    <script type="text/javascript">

        function setbrowsertoolbar() {
            window.document.menubar.enabled = false;
        }
        function cleartext() {
            document.getElementById('txtUserName').value = "";
            document.getElementById('txtPassword').value = "";
            document.getElementById('txtUserName').focus();
            return false;
        }
    </script>
    <script language="javascript" type="text/javascript">

        function StartKiosk() {

            window.open("LogIn.aspx?qstr=qstr", "", "fullscreen,toolbar=no,scrollbars=yes,menubars=no,copyhistory=no");
            timeoutID = setTimeout("CloseLauncher()", 10);
        }
        function CloseLauncher() {
            window.close();
        }

    </script>
    <script type="text/javascript" language="javascript">
        function controlEnter(obj, event) {
            var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
            if (keyCode == 13) {
                document.getElementById(obj).focus();
                return false;
            }
            else {
                return true;
            }
        }
        function btnCancel_onclick() {

        }

    </script>
</head>
<body class="">
    <div class="container">
        <div class="container-fluid">
            <div class="row mt-4 justify-content-center" >
                <div class="col-md-5">
                    <div class="card card-profile">
                        <div class="card-avatar">
                            <img alt="companyLogo" class="img" src="images/logo/CeaseFireLogo.jpg" />
                        </div>
                        <div class="card-body">
                            <form id="form1" runat="server">
                                <div class="form-horizontal">
                                    <a class="hiddenanchor" id="signup"></a>
                                    <a class="hiddenanchor" id="signin"></a>
                                    <asp:ScriptManager ID="scmLogin" runat="server" AsyncPostBackTimeout="100000">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="uppLogin" runat="server">
                                        <ContentTemplate>
                                            <uc1:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                            <div id="pnlLogin" runat="server">
                                                <h3 class="p-4">
                                                    <asp:Label ID="lblCompanyName" runat="server"
                                                        Text="Welcome"></asp:Label>
                                                </h3>
                                                <div class="msgtxt form-group" style="text-align: center; padding: 0px 0px 5px 0px; font-size: 13px; color: #fff;"
                                                    id="divError" runat="server">
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group m-b">
                                                        <asp:TextBox CssClass="form-control" placeholder="Username" ID="txtUserName" runat="server" MaxLength="50"
                                                            autocomplete="off" onkeypress="controlEnter ('ctl00_mainContent_txtPassword', event);"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>

                                                        <asp:RequiredFieldValidator ID="rfv_txtUserName" runat="server" ControlToValidate="txtUserName"
                                                            SetFocusOnError="true" Display="None" ErrorMessage="User name is required !"
                                                            ValidationGroup="login" Font-Size="8pt"></asp:RequiredFieldValidator>

                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtUserName" runat="server"
                                                            Enabled="True" TargetControlID="rfv_txtUserName">
                                                        </AjaxTools:ValidatorCalloutExtender>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group m-b">
                                                        <asp:TextBox CssClass="form-control" placeholder="Password" ID="txtPassword" runat="server" TextMode="Password"
                                                            MaxLength="50" autocomplete="off" onkeypress="controlEnter ('ctl00_mainContent_imbLoginButton', event);"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="fa fa-key"></i></span>

                                                        <asp:RequiredFieldValidator ID="rfv_txtPassword" runat="server" ControlToValidate="txtPassword"
                                                            SetFocusOnError="true" Display="None" ErrorMessage="Password is required !"
                                                            ValidationGroup="login" Font-Size="8pt"></asp:RequiredFieldValidator>

                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtPassword" runat="server"
                                                            Enabled="True" TargetControlID="rfv_txtPassword">
                                                        </AjaxTools:ValidatorCalloutExtender>

                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary"
                                                        Text="Log In" OnClick="btnLogin_Click" ValidationGroup="login" />
                                                    <input type="button" id="btnCancel" name="btnCancel" class="btn btn-default"
                                                        value="Clear" onclick="return cleartext();" />
                                                </div>
                                                <div class="form-group">
                                                    <div class="text-right">
                                                        <asp:LinkButton ID="lbtnfgtpwd" runat="server" Text="Forget Password"
                                                            CausesValidation="false" CssClass="reset_pass"></asp:LinkButton>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="text-right">
                                                        <asp:LinkButton ID="lbtnchgpwd" runat="server" Text="Reset Password"
                                                            CausesValidation="false" CssClass="reset_pass"></asp:LinkButton>
                                                    </div>
                                                </div>
                                                <div class="form-group d-none">
                                                    <div class="text-right">
                                                        <asp:LinkButton ID="lnkForgetPassword" runat="server" Text="Forget Password"
                                                            CausesValidation="false" CssClass="reset_pass" OnClick="lnkForgetPassword_Click"></asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="tblForgetPasswors" runat="server" visible="false">
                                                <h3 class="p-5">Forget Password</h3>
                                                <div class="form-group">
                                                    <asp:DropDownList ID="ddlRecoveryBy" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRecoveryBy_SelectedIndexChanged">
                                                        <asp:ListItem Text="EMAIL" Value="EMAIL"></asp:ListItem>
                                                        <asp:ListItem Text="SMS" Value="SMS"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div id="trMail" runat="server" visible="true" class="form-group">
                                                    <div class="input-group m-b">
                                                        <asp:TextBox CssClass="form-control" ID="txtEmailID" runat="server" placeholder="Email-ID"
                                                            MaxLength="500"
                                                            autocomplete="off"></asp:TextBox>
                                                        <span class="input-group-addon text-danger"><i class="fa fa-envelope-o"></i></span>
                                                        <asp:RequiredFieldValidator ID="rfv_txtEmailID" runat="server" SetFocusOnError="true"
                                                            Display="None" ValidationGroup="send" ControlToValidate="txtEmailID" ErrorMessage="Email ID is required !"
                                                            ToolTip="Email ID is required !">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txtEmailID"
                                                            Display="None" ErrorMessage="Enter valid email address !"
                                                            SetFocusOnError="True"
                                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                            ValidationGroup="send" />
                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_EmailID" runat="server"
                                                            Enabled="true" TargetControlID="rfv_txtEmailID">
                                                        </AjaxTools:ValidatorCalloutExtender>
                                                    </div>
                                                </div>
                                                <div id="trSMS" runat="server" visible="false" class="form-group">
                                                    <div class="input-group m-b">
                                                        <asp:TextBox ID="txtMobileNo" runat="server" placeholder="Mobile No"
                                                            MaxLength="10" CssClass="form-control"
                                                            autocomplete="off"></asp:TextBox>
                                                        <span class="input-group-addon text-danger"><i class="fa fa-mobile-phone"></i></span>
                                                        <asp:RequiredFieldValidator ID="rfv_txtMobileNo" runat="server"
                                                            CssClass="form-control" Display="Dynamic"
                                                            ValidationGroup="send" ControlToValidate="txtMobileNo" ErrorMessage="Mobile no. is required !" ToolTip="Mobile no. is required !">
                                                        </asp:RequiredFieldValidator>
                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtMobileNo" runat="server"
                                                            FilterMode="ValidChars"
                                                            FilterType="Numbers" TargetControlID="txtMobileNo">
                                                        </AjaxTools:FilteredTextBoxExtender>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="btnSendPassword" runat="server" CssClass="btn btn-primary btn-block"
                                                        ValidationGroup="send" Text="Send Password" OnClick="btnSendPassword_Click" />
                                                </div>
                                                <div class="form-group">
                                                    Already a member ?
                                                <asp:LinkButton ID="lnkLogin" runat="server" Text="Login" CausesValidation="false" ForeColor="#fff" CssClass="to_register" OnClick="lnkLogin_Click"></asp:LinkButton>
                                                </div>
                                            </div>
                                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="uppLogin"
                                                DynamicLayout="false">
                                                <ProgressTemplate>
                                                    Please wait...
                                    <img src="images/progressbarsmall.gif" alt="process" />
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<Footer:Footer ID="footer" runat="server" />--%>
    <script src="../assets/js/core/jquery.min.js"></script>
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <script type="text/javascript">
        $(<%=lbtnfgtpwd.ClientID%>).click(
            function ShowForgetPassword() {
                var h = 800;
                var w = 1350;
                var left = Number((screen.width / 2) - (w / 2));
                var top = Number((screen.height / 2) - (h / 2));
                window.open("http://api.ceasefire.biz/?i=fgtpwd", "_blank", "toolbar=no, scrollbars=yes, resizable=yes, top=" + top + ", left=" + left + ", width=" + w + ", height=" + h + "");
                return false;
            }
        );
        $(<%=lbtnchgpwd.ClientID%>).click(

           function UserChangePwd() {
               var h = 800;
               var w = 1350;
               var left = Number((screen.width / 2) - (w / 2));
               var top = Number((screen.height / 2) - (h / 2));
               window.open("http://test.api.ceasefire.biz/?i=chgpwd", "_blank", "toolbar=no, scrollbars=yes, resizable=yes, top=" + top + ", left=" + left + ", width=" + w + ", height=" + h + "");
               return false;
           }
       );
    </script>
</body>
</html>
