<%@ page title="Employee Master" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_EmployeeMaster, App_Web_5tvxh1jd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_PresentCity");
            if (o != null) {
                o.add_populating(function () {
                    o.set_contextKey($get("<%=txtPresentState.ClientID %>").value);
                }
            );
            }
            var o1 = $find("ace_PermanentCity");
            if (o1 != null) {
                o1.add_populating(function () {
                    o1.set_contextKey($get("<%=txtPermanentState.ClientID %>").value);
                }
            );
            }
        }
        function SetLogin() {
            $get("<%=txtLoginName.ClientID %>").value = $get("<%=txtEmployeeCode.ClientID %>").value;
            $get("<%=txtLoginPassword.ClientID %>").value = $get("<%=txtEmployeeCode.ClientID %>").value;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="content">
                <div class="container-fluid">
                    <table style="width: 100%;">
                        <tr>
                            <td></td>
                            <td style="width: 950px;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-left">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 100px; right: 397px; position: fixed; background-position: center; text-align: center;">
                                                    Please Wait....
                                                    <img src="../images/progressbarsmall.gif" alt="Loading" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="card-title">Employee Master</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small>Fields with <span class="text-danger">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-12 mb-2">
                                                                    <h3>Official Information</h3>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Employee Code<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtEmployeeCode" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onchange="SetLogin();" MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtEmployeeCode" runat="server"
                                                                            ControlToValidate="txtEmployeeCode"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Employee code can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtEmployeeCode" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtEmployeeCode">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Employee Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtEmployeeName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="200" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtEmployeeName" runat="server"
                                                                            ControlToValidate="txtEmployeeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Employee name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtEmployeeName" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtEmployeeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Reproting Person
                                                                        </label>
                                                                        <asp:TextBox ID="txtReportTo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_Employee" runat="server" BehaviorID="ace_Employee"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetEmployeeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtReportTo" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Office Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvtxtOfficeName" runat="server" ControlToValidate="txtOfficeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Name can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtOfficeName" runat="server" Enabled="True"
                                                                            TargetControlID="rfvtxtOfficeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_Office" runat="server" BehaviorID="ace_Office"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtOfficeName" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Department Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtDepartment" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfttxtDepartment" runat="server" ControlToValidate="txtDepartment"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Department name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtDepartment" runat="server" Enabled="True"
                                                                            TargetControlID="rfttxtDepartment">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_Department" runat="server" BehaviorID="ace_Department"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetDepartmentHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtDepartment" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Designation Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtDesignation" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvtxtDesignation" runat="server" ControlToValidate="txtDesignation"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Designation name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtDesignation" runat="server" Enabled="True"
                                                                            TargetControlID="rfvtxtDesignation">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_Designation" runat="server" BehaviorID="ace_Designation"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetDesignationHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtDesignation" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Joining Date<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtJoiningDate" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:CalendarExtender ID="ce_txtJoiningDate" runat="server" Format="dd/MM/yyyy"
                                                                            TargetControlID="txtJoiningDate">
                                                                        </AjaxTools:CalendarExtender>
                                                                        <AjaxTools:MaskedEditExtender ID="mee_txtJoiningDate" runat="server" ClearTextOnInvalid="True"
                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                            TargetControlID="txtJoiningDate"
                                                                            UserDateFormat="DayMonthYear">
                                                                        </AjaxTools:MaskedEditExtender>
                                                                        <asp:RegularExpressionValidator ID="rev_txtJoiningDate" runat="server"
                                                                            ControlToValidate="txtJoiningDate"
                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                            ValidationGroup="save">
                                                                        </asp:RegularExpressionValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtJoiningDate" runat="server" Enabled="True"
                                                                            TargetControlID="rev_txtJoiningDate">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Last Work Date
                                                                        </label>
                                                                        <asp:TextBox ID="txtLastWorkingDate" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:CalendarExtender ID="ce_txtLastWorkingDate" runat="server" Format="dd/MM/yyyy"
                                                                            TargetControlID="txtLastWorkingDate">
                                                                        </AjaxTools:CalendarExtender>
                                                                        <asp:RegularExpressionValidator ID="rev_txtLastWorkingDate" runat="server"
                                                                            ControlToValidate="txtLastWorkingDate"
                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                            ValidationGroup="save">
                                                                        </asp:RegularExpressionValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtLastWorkingDate" runat="server" Enabled="True"
                                                                            TargetControlID="rev_txtLastWorkingDate">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Office Phone
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficePhone" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtOfficePhone" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtOfficePhone" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Office Ext
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeExt" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="5" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtOfficeExt" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Office Mobile No
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeMobileNo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtOfficeMobileNo" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Office Email ID
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeEmailID" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="100" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="rev_txtOfficeEmailID" runat="server" ValidationGroup="save"
                                                                            ControlToValidate="txtOfficeEmailID" Display="None" ErrorMessage="Enter valid EmailId !"
                                                                            SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtOfficeEmailID" PopupPosition="BottomRight"
                                                                            runat="server" TargetControlID="rev_txtOfficeEmailID">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 mt-2 mb-2">
                                                                    <h3 class="no-margins">Personal Information</h3>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Date Of Birth<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtDOB" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:CalendarExtender ID="ce_txtDOB" runat="server" Format="dd/MM/yyyy"
                                                                            TargetControlID="txtDOB">
                                                                        </AjaxTools:CalendarExtender>
                                                                        <AjaxTools:MaskedEditExtender ID="Msk_txtDOB" runat="server" ClearTextOnInvalid="True"
                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                            TargetControlID="txtDOB"
                                                                            UserDateFormat="DayMonthYear">
                                                                        </AjaxTools:MaskedEditExtender>
                                                                        <asp:RegularExpressionValidator ID="rev_txtDOB" runat="server"
                                                                            ControlToValidate="txtDOB"
                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                            ValidationGroup="save">
                                                                        </asp:RegularExpressionValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtDOB" runat="server" Enabled="True"
                                                                            TargetControlID="rev_txtDOB">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Aadhaar No
                                                                        </label>
                                                                        <asp:TextBox ID="txtAadhaarNo" runat="server" AutoComplete="off"
                                                                            MaxLength="15" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Driving Licence
                                                                        </label>
                                                                        <asp:TextBox ID="txtDrivingLicence" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="15" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Driving Licence Exp
                                                                        </label>
                                                                        <asp:TextBox ID="txtDrivingLicenceExp" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:CalendarExtender ID="ce_txtDrivingLicenceExp" runat="server" Format="dd/MM/yyyy"
                                                                            TargetControlID="txtDrivingLicenceExp">
                                                                        </AjaxTools:CalendarExtender>
                                                                        <%-- <AjaxTools:MaskedEditExtender ID="mee_txtDrivingLicenceExp" runat="server" 
                                                        ClearTextOnInvalid="True"
                                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                        CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                        TargetControlID="txtDrivingLicenceExp"
                                                        UserDateFormat="DayMonthYear">
                                                    </AjaxTools:MaskedEditExtender>--%>
                                                                        <asp:RegularExpressionValidator ID="rev_txtDrivingLicenceExp" runat="server"
                                                                            ControlToValidate="txtDrivingLicenceExp"
                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                            ValidationGroup="save">
                                                                        </asp:RegularExpressionValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtDrivingLicenceExp" runat="server" Enabled="True"
                                                                            TargetControlID="rev_txtDrivingLicenceExp">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            ID Card No
                                                                        </label>
                                                                        <asp:TextBox ID="txtIDCardNo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="15" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Pan No.
                                                                        </label>
                                                                        <asp:TextBox ID="txtPanNo" runat="server" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Passport No.
                                                                        </label>
                                                                        <asp:TextBox ID="txtPassportNo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="30" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Passport Exp Date
                                                                        </label>
                                                                        <asp:TextBox ID="txtPassportExpDate" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:CalendarExtender ID="ce_txtPassportExpDate" runat="server" Format="dd/MM/yyyy"
                                                                            TargetControlID="txtPassportExpDate">
                                                                        </AjaxTools:CalendarExtender>
                                                                        <%--<AjaxTools:MaskedEditExtender ID="mee_txtPassportExpDate" runat="server" 
                                                        ClearTextOnInvalid="True"
                                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                        CultureTimePlaceholder="" Enabled="true" Mask="99/99/9999" MaskType="Date"
                                                        TargetControlID="txtPassportExpDate"
                                                        UserDateFormat="DayMonthYear">
                                                    </AjaxTools:MaskedEditExtender>--%>
                                                                        <asp:RegularExpressionValidator ID="rev_txtPassportExpDate" runat="server"
                                                                            ControlToValidate="txtPassportExpDate"
                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                            ValidationGroup="save">
                                                                        </asp:RegularExpressionValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtPassportExpDate" runat="server" Enabled="True"
                                                                            TargetControlID="rev_txtPassportExpDate">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Guardian
                                                                        </label>
                                                                        <asp:DropDownList ID="ddlGuardianType" runat="server" CssClass="form-control font-bold">
                                                                            <asp:ListItem Value="FATHER">FATHER</asp:ListItem>
                                                                            <asp:ListItem Value="MOTHER">MOTHER</asp:ListItem>
                                                                            <asp:ListItem Value="HUSBAND">HUSBAND</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Guardian Name
                                                                        </label>
                                                                        <asp:TextBox ID="txtGuardianName" runat="server" AutoComplete="off"
                                                                            MaxLength="200" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Gender
                                                                        </label>
                                                                        <asp:RadioButtonList ID="rdbGender" runat="server" RepeatColumns="2">
                                                                            <asp:ListItem Value="MALE" Selected="True">MALE</asp:ListItem>
                                                                            <asp:ListItem Value="FEMALE">FEMALE</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Personal  Mobile No
                                                                        </label>
                                                                        <asp:TextBox ID="txtPersonalMobileNo" runat="server" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtPersonalMobileNo" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Personal Phone No
                                                                        </label>
                                                                        <asp:TextBox ID="txtPersonalPhoneNo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtPersonalPhoneNo" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Personal Email
                                                                        </label>
                                                                        <asp:TextBox ID="txtPersonalEmail" runat="server" AutoComplete="off"
                                                                            MaxLength="100" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="rev_txtPersonalEmail" runat="server" ValidationGroup="save"
                                                                            ControlToValidate="txtPersonalEmail" Display="None" ErrorMessage="Enter valid EmailId !"
                                                                            SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtPersonalEmail" PopupPosition="BottomRight"
                                                                            runat="server" TargetControlID="rev_txtPersonalEmail">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 mt-2 mb-2">
                                                                    <h3>Present Contact Information</h3>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Address 1
                                                                        </label>
                                                                        <asp:TextBox ID="txtPresentAddress1" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Address 2
                                                                        </label>
                                                                        <asp:TextBox ID="txtPresentAddress2" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            State
                                                                        </label>
                                                                        <asp:TextBox ID="txtPresentState" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_PresentState" runat="server" BehaviorID="ace_PresentState"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetStateHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtPresentState" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            City
                                                                        </label>
                                                                        <asp:TextBox ID="txtPresentCity" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_PresentCity" runat="server" BehaviorID="ace_PresentCity"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetCityByStateHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtPresentCity" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Pincode
                                                                        </label>
                                                                        <asp:TextBox ID="txtPresentPincode" runat="server" AutoComplete="off"
                                                                            MaxLength="6" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtPresentPincode" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 mt-4 pt-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Same Permanent Add
                                                                        </label>
                                                                        <asp:CheckBox ID="chkAddressSame" runat="server" AutoPostBack="true" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 mt-2 mb-2">
                                                                    <h3>Permanent Contact Information</h3>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Address 1
                                                                        </label>
                                                                        <asp:TextBox ID="txtPermanentAddress1" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Address 2
                                                                        </label>
                                                                        <asp:TextBox ID="txtPermanentAddress2" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            State
                                                                        </label>
                                                                        <asp:TextBox ID="txtPermanentState" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_PermanentState" runat="server" BehaviorID="ace_PermanentState"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetStateHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtPermanentState" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            City
                                                                        </label>
                                                                        <asp:TextBox ID="txtPermanentCity" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_PermanentCity" runat="server" BehaviorID="ace_PermanentCity"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetCityByStateHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtPermanentCity" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Pincode
                                                                        </label>
                                                                        <asp:TextBox ID="txtPermanentPincode" runat="server" AutoComplete="off"
                                                                            MaxLength="6" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtPermanentPincode" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 mt-2 mb-2">
                                                                    <h3>Login Information</h3>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Login Name
                                                                        </label>
                                                                        <asp:TextBox ID="txtLoginName" runat="server" AutoComplete="off"
                                                                            Enabled="false" MaxLength="50" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Password
                                                                        </label>
                                                                        <asp:TextBox ID="txtLoginPassword" runat="server" AutoComplete="off"
                                                                            MaxLength="50" TextMode="Password" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Role
                                                                        </label>
                                                                        <asp:DropDownList ID="ddlRole" runat="server" AutoComplete="off"
                                                                            CssClass="form-control">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 text-center">
                                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save"
                                                                        OnClick="btnSave_Click" ValidationGroup="save" />
                                                                    <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success" Visible="False" Text="Update"
                                                                        OnClick="btnUpdate_Click" CausesValidation="true" ValidationGroup="save" />
                                                                    <asp:Button ID="btnCancel" OnClick="btnCancel_Click" runat="server" CssClass="btn btn-success" Text="Cancel" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-4 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Employee Code OR Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-3 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="GO" CssClass="btn btn-success mt-0 mb-0" />
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-info mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;width:69.5rem;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered" DataKeyNames="EmployeeID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                                    OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-info d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("EmployeeID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="View" CommandArgument='<%#Eval("EmployeeID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger d-none" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("EmployeeID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                        runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                        TargetControlID="btnDelete">
                                                                                    </AjaxTools:ConfirmButtonExtender>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" CssClass="width90" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="pagerstyle" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="false" />
                                                                    <RowStyle Wrap="false" />
                                                                    <AlternatingRowStyle />
                                                                </asp:GridView>
                                                            </asp:Panel>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="lnkExport" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

