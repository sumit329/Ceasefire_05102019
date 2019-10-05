<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="CommonModule_ResetPassword, App_Web_e2av5fen" title="Reset Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .modalBg {
            background-color: Aqua;
            filter: alpha(opacity=80);
            opacity: 0.8;
        }

        .watermarked {
            width: 50px;
            background-color: #ffffff;
            font-size: 8.5pt;
            border: 1px solid #D8D8D8;
            margin-left: 0px;
            text-align: left;
            border: 1px solid #BEBEBE;
            color: gray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="col-md-4 col-sm-12 col-xs-12" style="padding-top: 16px;">
                            Fields with <span style="color: Red">*</span> mark are mandatory.
                        </div>
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <h3 class="headerhelpclasss">Reset Password</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1%; text-align: left;">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1%; text-align: left;">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 294px; right: 397px; position: fixed; background-position: center; text-align: center;">
                                                    Please Wait....
                                                    <img src="../images/progressbarsmall.gif" alt="Loading" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                    <div class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <div class="col-md-8">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Old Password
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtOldPassword" runat="server" Style="text-transform: uppercase"
                                                        TextMode="Password" MaxLength="50" AutoComplete="off" onfocus="this.select();"
                                                        >
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv_txtOldPassword" runat="server" ControlToValidate="txtOldPassword"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="Old Password can not be blank !"
                                                        ValidationGroup="save" Font-Size="8pt">
                                                    </asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtOldPassword" runat="server" PopupPosition="BottomRight"
                                                        Enabled="True" TargetControlID="rfv_txtOldPassword">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                    &nbsp;<span style="color: Red">*</span> <i class="ace-icon fa fa-1x fa-key"></i>

                                                </div>
                                                 
                                            </div>
                                            
                                        </div>
                                         <div class="form-group">

                                             <div class="col-md-8">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    New Password
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtNewPassword" runat="server" Style="text-transform: uppercase"
                                                        TextMode="Password" MaxLength="50" AutoComplete="off" onfocus="this.select();"
                                                        >
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv_txtNewPassword" runat="server" ControlToValidate="txtNewPassword"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="New Password can not be blank !"
                                                        ValidationGroup="save" Font-Size="8pt">
                                                    </asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtNewPassword" runat="server" PopupPosition="BottomRight"
                                                        Enabled="True" TargetControlID="rfv_txtNewPassword">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                    &nbsp;<span style="color: Red">*</span> <i class="ace-icon fa fa-1x fa-key"></i>
                                                </div>
                                            </div> 

                                             </div>
                                        <div class="form-group">
                                            <div class="col-md-8">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Confirm Password
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtConfirmPassword" runat="server" Style="text-transform: uppercase"
                                                        TextMode="Password" MaxLength="50" AutoComplete="off" onfocus="this.select();"
                                                        >
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv_txtConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="Confirm Password can not be blank !"
                                                        ValidationGroup="save" Font-Size="8pt">
                                                    </asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtConfirmPassword" runat="server" PopupPosition="BottomRight"
                                                        Enabled="True" TargetControlID="rfv_txtConfirmPassword">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                    &nbsp;<span style="color: Red">*</span> <i class="ace-icon fa fa-1x fa-key"></i>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-8">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save" ValidationGroup="save" OnClick="btnSave_Click" />
                                                </div>
                                            </div> 
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Button ID="btnhidden" runat="server" Style="display: none" Text="HiddenButton"></asp:Button>
    <table style="table-layout: fixed" width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <AjaxTools:ModalPopupExtender ID="MPExtender" runat="server" BackgroundCssClass="modalBg"
                    PopupDragHandleControlID="PanelDetail" CancelControlID="btnhidden" DropShadow="false"
                    PopupControlID="PanelDetail" TargetControlID="btnhidden">
                </AjaxTools:ModalPopupExtender>
                <asp:Panel ID="PanelDetail" runat="server" BackColor="White" BorderStyle="Double"
                    Height="80px" ScrollBars="None" Width="640px">
                    <asp:UpdatePanel ID="upPanelPopup" runat="server">
                        <ContentTemplate>
                            <table width="100%" class="border_all">
                                <tr>
                                    <td align="center" class="lblMediumBold">
                                        <b>Your password has been changed successfully ! Please login again !</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success"
                                            OnClick="btnLogin_Click" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
