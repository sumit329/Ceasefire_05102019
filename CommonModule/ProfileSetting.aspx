<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="CommonModule_ProfileSetting, App_Web_e2av5fen" title="Profile Setting" %>

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
                            <h3 class="headerhelpclasss">User Profile</h3>
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
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Office Name
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtOfficeName" runat="server" Style="text-transform: uppercase"
                                                        Enabled="false" AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                    </asp:TextBox>
                                                    <%--&nbsp; <i class="ace-icon fa fa-1x fa-building-o"></i>--%>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    User Name
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtUserName" runat="server" Style="text-transform: uppercase" MaxLength="200"
                                                       Enabled="false" AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfv_txtUserName" runat="server" ControlToValidate="txtUserName"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="User Name can not be blank !"
                                                        ValidationGroup="save" Font-Size="8pt">
                                                    </asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtUserName" runat="server" PopupPosition="BottomRight"
                                                        Enabled="True" TargetControlID="rfv_txtUserName">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                    <%--&nbsp;<span style="color: Red">*</span> <i class="ace-icon fa fa-1x fa-user"></i>--%>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Address 1
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" MaxLength="200"
                                                        Style="text-transform: uppercase" onfocus="this.select()">
                                                    </asp:TextBox>
                                                    <%--&nbsp;&nbsp; <i class="ace-icon fa fa-1x fa-home"></i>--%>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Address 2
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" MaxLength="200"
                                                        Style="text-transform: uppercase" onfocus="this.select()">
                                                    </asp:TextBox>
                                                    <%--&nbsp;&nbsp; <i class="ace-icon fa fa-1x fa-home"></i>--%>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    City
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                     
                                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" MaxLength="200"
                                                        Style="text-transform: uppercase" onfocus="this.select()">
                                                    </asp:TextBox>
                                                    <%--&nbsp;&nbsp; <i class="ace-icon fa fa-1x fa-home"></i>--%>
                                                    <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated" ID="AutoCompleteExtender1"
                                                        runat="server" BehaviorID="AutoCompleteExtender1" CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                        DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                        MinimumPrefixLength="1" ServiceMethod="GetCityHelp" ServicePath="~/WService.asmx"
                                                        TargetControlID="txtCity" UseContextKey="false">
                                                    </AjaxTools:AutoCompleteExtender>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    State
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtState" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                        onfocus="this.select();" CssClass="form-control">
                                                    </asp:TextBox>
                                                    <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated" ID="AutoCompleteExtender2"
                                                        runat="server" BehaviorID="AutoCompleteExtender2" CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                        DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                        MinimumPrefixLength="1" ServiceMethod="GetStateHelp" ServicePath="~/WService.asmx"
                                                        TargetControlID="txtState" UseContextKey="false">
                                                    </AjaxTools:AutoCompleteExtender>
                                                    <%--&nbsp;&nbsp; <i class="ace-icon fa fa-1x fa-home"></i>--%>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Mobile No.
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control"
                                                        MaxLength="15" onfocus="this.select()">
                                                    </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="rev_txtMobiileNo" runat="server" ControlToValidate="txtMobileNo"
                                                        Display="None" Enabled="true" ErrorMessage="Mobile No. should be numeric" SetFocusOnError="true"
                                                        ValidationExpression="^[+]?\d*$" ValidationGroup="save">
                                                    </asp:RegularExpressionValidator>
                                                    <AjaxTools:FilteredTextBoxExtender ID="ftxte_txtMobileNo" runat="server" FilterType="Custom, numbers"
                                                        TargetControlID="txtMobileNo" ValidChars="- . , +">
                                                    </AjaxTools:FilteredTextBoxExtender>
                                                    <%--&nbsp;&nbsp; <i class="ace-icon fa fa-1x fa-mobile"></i>--%>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Phone No.
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtPhoneNo" runat="server" autocomplete="off" CssClass="form-control"
                                                        MaxLength="20" onfocus="this.select()">
                                                    </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="REV_txtPhoneNo" runat="server" ControlToValidate="txtPhoneNo"
                                                        Display="None" Enabled="true" ErrorMessage="Alternate Phone No should be numeric"
                                                        SetFocusOnError="true" ValidationExpression="^[+]?\d*$">
                                                    </asp:RegularExpressionValidator>
                                                    <AjaxTools:FilteredTextBoxExtender ID="FTE_txtPhoneNo" runat="server" FilterType="Custom, numbers"
                                                        TargetControlID="txtPhoneNo" ValidChars="- . , +">
                                                    </AjaxTools:FilteredTextBoxExtender>
                                                    <%--&nbsp;&nbsp; <i class="ace-icon fa fa-1x fa-phone"></i>--%>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    E-Mail ID
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtEmailID" runat="server" autocomplete="off" CssClass="form-control"
                                                        Style="text-transform: uppercase" Enabled="true" onfocus="this.select()">
                                                    </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmailID"
                                                        Display="None" ErrorMessage="Enter valid Email Id !" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                        ValidationGroup="save" />
                                                    <AjaxTools:ValidatorCalloutExtender ID="vcetxtEmailID" runat="server" PopupPosition="BottomRight"
                                                        TargetControlID="revEmail">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                    <%--&nbsp;&nbsp; <i class="ace-icon fa fa-1x fa-envelope"></i>--%>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                </div>
                                            </div>
                                        </div>



                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save" ValidationGroup="save"
                                                        OnClick="btnSave_Click" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
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
                                        <b>Your profile has been changed successfully ! Please login again !</b>
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
