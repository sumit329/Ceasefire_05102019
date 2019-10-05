<%@ page title="Conveyance Voucher" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_ConveyanceVoucher, App_Web_1zdtagca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        document.getElementById("<%=txtDistanceBetweenOfficeHome.ClientID%>").addEventListener("keyup", calculate(), 0);
        document.getElementById("<%=txtTotalKm.ClientID%>").addEventListener("keyup", calculate(), 0);
        function calculate() {
            debugger;
            var DistanceBetweenOfficeHome = document.getElementById("<%=txtDistanceBetweenOfficeHome.ClientID%>").value;
            var TotalKm = document.getElementById("<%=txtTotalKm.ClientID%>").value;

            if (DistanceBetweenOfficeHome > TotalKm) {
                var LessKmfromResiToOffice = 0.0;
            }
            else {
                var LessKmfromResiToOffice = document.getElementById("<%=txtLessKmfromResiToOffice.ClientID%>").value = parseFloat(TotalKm) - parseFloat(DistanceBetweenOfficeHome);
            }
            var RateKm = document.getElementById("<%=txtRateKm.ClientID%>").value;
            var NetKmPayable = document.getElementById("<%=txtNetKmPayable.ClientID%>").value = parseFloat(LessKmfromResiToOffice) * parseFloat(RateKm);
            document.getElementById("<%=txtAmountClaimed.ClientID%>").value = NetKmPayable;
            document.getElementById("<%=txtUserClaimed.ClientID%>").value = parseFloat(TotalKm) * parseFloat(RateKm);


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
                            <td style="width: 80vw;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-left">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 294px; right: 397px; position: fixed; background-position: center; text-align: center;">
                                                    Please Wait....
                                                    <img src="../images/progressbarsmall.gif" alt="Loading" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card vw85" id="cardInput" runat="server">
                                            <div class="card-header card-header-warning">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title" Text="Conveyance Voucher"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div id="divEmployeeName" runat="server" class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Employee Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"
                                                                            onchange="EmployeeNameChange()"></asp:TextBox>
                                                                        <%--OnTextChanged="txtEmployeeName_TextChanged"--%>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtEmployeeName" runat="server" ControlToValidate="txtEmployeeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Employee can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtEmployeeName" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtEmployeeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_Employee" BehaviorID="ace_Employee" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetActivetEmployeeByOffice_2Level_Help" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtEmployeeName" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="card mt-1 mb-1">
                                                                        <div class="card-body">
                                                                            <div class="row">
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label>
                                                                                            Start Point<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:DropDownList ID="ddlStartPoint" runat="server" CssClass="form-control text-uppercase">
                                                                                            <asp:ListItem Text="OFFICE" Value="OFFICE"></asp:ListItem>
                                                                                            <asp:ListItem Text="HOME" Value="HOME"></asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label>
                                                                                            End Point<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:DropDownList ID="ddlEndPoint" runat="server" AutoPostBack="true" OnTextChanged="ddlEndPoint_TextChanged"
                                                                                            CssClass="form-control text-uppercase">
                                                                                            <asp:ListItem Text="OFFICE" Value="OFFICE"></asp:ListItem>
                                                                                            <asp:ListItem Text="HOME" Value="HOME"></asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label>Dist.&nbsp;Office&nbsp;&&nbsp;Home<span class="text-danger">*</span></label>
                                                                                        <asp:TextBox ID="txtDistanceBetweenOfficeHome" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-right"
                                                                                            MaxLength="10" onkeyup="calculate()">
                                                                                        </asp:TextBox>
                                                                                        <%--AutoPostBack="true" OnTextChanged="txtDistanceBetweenOfficeHome_TextChanged"--%>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtDistanceBetweenOfficeHome" runat="server"
                                                                                            ControlToValidate="txtDistanceBetweenOfficeHome"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Distance Between Office & Home can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtDistanceBetweenOfficeHome" runat="server" Enabled="True"
                                                                                            TargetControlID="rfv_txtDistanceBetweenOfficeHome">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtDistanceBetweenOfficeHome" runat="server"
                                                                                            ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtDistanceBetweenOfficeHome">
                                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label>Date</label>
                                                                                        <asp:TextBox ID="txtDate" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtDate" runat="server" ControlToValidate="txtDate"
                                                                                            Display="None" ErrorMessage="Date can not be blank !" ValidationGroup="report"
                                                                                            Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtDate" runat="server" Enabled="True"
                                                                                            PopupPosition="TopRight" TargetControlID="rfv_txtDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:CalendarExtender ID="ce_txtDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtDate">
                                                                                        </AjaxTools:CalendarExtender>
                                                                                        <AjaxTools:MaskedEditExtender ID="ms_txtDate" runat="server" ClearTextOnInvalid="True"
                                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtDate"
                                                                                            UserDateFormat="DayMonthYear">
                                                                                        </AjaxTools:MaskedEditExtender>
                                                                                        <asp:RegularExpressionValidator ID="rev_txtDate" runat="server" ControlToValidate="txtDate"
                                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                            ValidationGroup="report">
                                                                                        </asp:RegularExpressionValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce1_txtDate" runat="server" Enabled="True"
                                                                                            TargetControlID="rev_txtDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtDate" runat="server"
                                                                                            TargetControlID="txtDate" WatermarkText="dd/mm/yyyy">
                                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            City<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtCity" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtCity" runat="server"
                                                                                            ControlToValidate="txtCity"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="City can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtCity" runat="server" Enabled="True"
                                                                                            TargetControlID="rfv_txtCity">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                            ID="ace_City" runat="server" BehaviorID="ace_City"
                                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                            MinimumPrefixLength="1" ServiceMethod="GetCityHelp" ServicePath="~/WService.asmx"
                                                                                            TargetControlID="txtCity" UseContextKey="true">
                                                                                        </AjaxTools:AutoCompleteExtender>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            From Place<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtFromPlace" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtFromPlace" runat="server"
                                                                                            ControlToValidate="txtFromPlace"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="From Place can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtFromPlace" runat="server" Enabled="True"
                                                                                            TargetControlID="rfv_txtFromPlace">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            To Place<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <div class="form-group">
                                                                                            <asp:TextBox ID="txtToPlace" runat="server" AutoComplete="off"
                                                                                                onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                            </asp:TextBox>
                                                                                            <asp:RequiredFieldValidator ID="rfv_txtToPlace" runat="server"
                                                                                                ControlToValidate="txtToPlace"
                                                                                                SetFocusOnError="true" Display="None" ErrorMessage="To Place can not be blank !"
                                                                                                ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtToPlace" runat="server" Enabled="True"
                                                                                                TargetControlID="rfv_txtToPlace">
                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            Purpose Of Visit<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtPurposeOfVisit" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtPurposeOfVisit" runat="server"
                                                                                            ControlToValidate="txtPurposeOfVisit"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Purpose Of Visit can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtPurposeOfVisit" runat="server" Enabled="True"
                                                                                            TargetControlID="rfv_txtPurposeOfVisit">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                            ID="ace_txtPurposeOfVisit" runat="server" BehaviorID="ace_txtPurposeOfVisit"
                                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                            MinimumPrefixLength="1" ServiceMethod="GetPurposeHelp" ServicePath="~/WService.asmx"
                                                                                            TargetControlID="txtPurposeOfVisit" UseContextKey="false">
                                                                                        </AjaxTools:AutoCompleteExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            Transport Mode <span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtTransportMode" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase"
                                                                                            onchange="TransportModeChange()">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtTransportMode" runat="server"
                                                                                            ControlToValidate="txtTransportMode"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Transport Mode can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtTransportMode" runat="server" Enabled="True"
                                                                                            TargetControlID="rfv_txtTransportMode">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                            ID="ace_txtTransportMode" runat="server" BehaviorID="ace_txtTransportMode"
                                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                            MinimumPrefixLength="1" ServiceMethod="GetTransportModeHelp" ServicePath="~/WService.asmx"
                                                                                            TargetControlID="txtTransportMode" UseContextKey="true">
                                                                                        </AjaxTools:AutoCompleteExtender>
                                                                                    </div>
                                                                                </div>
                                                                                
                                                                            </div>
                                                                            <div class="row" id="divDistance" runat="server">
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            Total Km<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtTotalKm" runat="server" AutoComplete="off"
                                                                                            MaxLength="10"
                                                                                            onfocus="this.select();" CssClass="form-control text-right"
                                                                                            onkeyup="calculate()">
                                                                                        </asp:TextBox>
                                                                                        <%--AutoPostBack="true" OnTextChanged="txtTotalKm_TextChanged"--%>
                                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtTotalKm" runat="server"
                                                                                            ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtTotalKm">
                                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-1">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            Rate&nbsp;/&nbsp;Km
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtRateKm" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-right">
                                                                                        </asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label data-toggle="tooltip" title="User Claimed = Total Km * Rate Km">
                                                                                            User Claimed
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtUserClaimed" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-right">
                                                                                        </asp:TextBox>
                                                                                        <%--<AjaxTools:FilteredTextBoxExtender ID="ftxte_txtUserClaimed" runat="server"
                                                                                            ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtUserClaimed">
                                                                                        </AjaxTools:FilteredTextBoxExtender>--%>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-1">
                                                                                    <div class="form-group">
                                                                                        <label data-toggle="tooltip" title="Less = Total Km - Distance Between Office & Home">
                                                                                            <%--Less--%>
                                                                                            Net Km
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtLessKmfromResiToOffice" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-right">
                                                                                        </asp:TextBox>
                                                                                        <%--<AjaxTools:FilteredTextBoxExtender ID="fte_txtLessKmfromResiToOffice" runat="server"
                                                                                            ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtLessKmfromResiToOffice">
                                                                                        </AjaxTools:FilteredTextBoxExtender>--%>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label data-toggle="tooltip" title="Net Km Payable = Less * Total Km">
                                                                                            Net Km Payable
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtNetKmPayable" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-right" Enabled="false">
                                                                                        </asp:TextBox>
                                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtNetKmPayable" runat="server"
                                                                                            ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtNetKmPayable">
                                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label data-toggle="tooltip" title="Amount Claimed = Net Km Payable ">
                                                                                            Amount Claimed
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtAmountClaimed" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-right">
                                                                                        </asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row" id="divBill" runat="server">
                                                                                <div class="col-md-3">
                                                                                    <div class="form-group">
                                                                                        <label class="">Bill No <span class="text-danger">*</span></label>
                                                                                        <asp:TextBox ID="txtBillNo" MaxLength="20" runat="server" CssClass="form-control text-uppercase"
                                                                                            onfocus="this.select();" AutoComplete="off"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtBillNo" runat="server" ControlToValidate="txtBillNo"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Bill No can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtBillNo" runat="server"
                                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtBillNo">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <asp:RegularExpressionValidator Display="None" ControlToValidate="txtBillNo" ID="rev_txtBillNo"
                                                                                            ValidationExpression="^[a-zA-z0-9]{1,20}[a-zA-z0-9]$" runat="server" SetFocusOnError="true"
                                                                                            ErrorMessage="Minimum 2 characters required and no special characters."></asp:RegularExpressionValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce1_txtBillNo" runat="server"
                                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rev_txtBillNo">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label class="">Bill Date <span class="text-danger">*</span></label>
                                                                                        <asp:TextBox ID="txtBillDate" runat="server" AutoComplete="off" CssClass="form-control"></asp:TextBox>
                                                                                        <AjaxTools:CalendarExtender ID="ce_txtBillDate" runat="server" Format="dd/MM/yyyy"
                                                                                            TargetControlID="txtBillDate">
                                                                                        </AjaxTools:CalendarExtender>
                                                                                        <AjaxTools:MaskedEditExtender ID="Msk_txtBillDate" runat="server" ClearTextOnInvalid="True"
                                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                                            TargetControlID="txtBillDate"
                                                                                            UserDateFormat="DayMonthYear">
                                                                                        </AjaxTools:MaskedEditExtender>
                                                                                        <asp:RegularExpressionValidator ID="rev_txtBillDate" runat="server"
                                                                                            ControlToValidate="txtBillDate"
                                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                            ValidationGroup="save">
                                                                                        </asp:RegularExpressionValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtBillDate" runat="server" Enabled="True"
                                                                                            TargetControlID="rev_txtBillDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtBillDate" runat="server"
                                                                                            TargetControlID="txtBillDate" WatermarkText="dd/mm/yyyy">
                                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label class="">Bill Amount <span class="text-danger">*</span></label>
                                                                                        <asp:TextBox ID="txtBillAmount" MaxLength="10" runat="server" CssClass="form-control text-right"
                                                                                            onfocus="this.select();" AutoComplete="off"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtBillAmount" runat="server" ControlToValidate="txtBillAmount"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Bill Amount can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtBillAmount" runat="server"
                                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtBillAmount">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtBillAmount" runat="server" TargetControlID="txtBillAmount"
                                                                                            Enabled="true" FilterType="Numbers,Custom" ValidChars=".">
                                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <label class="label-on-left">Bill Scan Copy Upload <span class="text-danger">*</span></label>
                                                                                    <asp:FileUpload ID="fuBill" runat="server" CssClass="custom-file" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="row" id="div1" runat="server">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="">Remarks</label>
                                                                                        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" CssClass="form-control text-uppercase"
                                                                                          MaxLength="250"  onfocus="this.select();" AutoComplete="off"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2 mt-4">
                                                                                    <input type="button" id="htmlAdd" runat="server" class="btn btn-danger " value="Add" onclick="DisableAddClick();" />
                                                                                    <asp:Button ID="btnADD" runat="server" CssClass="d-none" OnClick="btnADD_Click" />
                                                                                    <asp:Button ID="btnEmpChange" runat="server" CssClass="d-none" OnClick="btnEmpChange_Click" />
                                                                                    <asp:Button ID="btnTransportModeChange" runat="server" CssClass="d-none" OnClick="btnTransportModeChange_Click" />
                                                                                </div>
                                                                            </div>
                                                                            <hr />
                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto">
                                                                                        <asp:GridView ID="grdTransaction" runat="server" AllowPaging="false"
                                                                                            AutoGenerateColumns="true"
                                                                                            Width="100%" CssClass="table table-bordered table-hover"
                                                                                            AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                            CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                                            OnRowCreated="grdTransaction_RowCreated" OnRowCommand="grdTransaction_RowCommand" OnRowDeleted="grdTransaction_RowDeleted"
                                                                                            OnRowDeleting="grdTransaction_RowDeleting">
                                                                                            <Columns>
                                                                                                <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Container.DataItemIndex+1 %>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" CommandName="Delete"
                                                                                                            CommandArgument='<%#Eval("ConveyanceVoucherDetailID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                                                runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                                                TargetControlID="btnDelete">
                                                                                                            </AjaxTools:ConfirmButtonExtender>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Width="100px" Wrap="false" CssClass="col-md-2" />
                                                                                                    <ItemStyle Wrap="false" Width="100px" />
                                                                                                </asp:TemplateField>
                                                                                            </Columns>
                                                                                            <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                                            <PagerStyle CssClass="table" HorizontalAlign="Left" />
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
                                                            <div class="row">
                                                                <div class="col-md-12 text-center">
                                                                    <input type="button" id="htmlSave" runat="server" class="btn btn-warning" value="Save" onclick="DisableSaveClick();" />
                                                                    <asp:Button ID="btnSave" runat="server" CssClass="d-none" OnClick="btnSave_Click" />
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <label>Less: (Km from Resi. To Office)</label>
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
                                            <div class="card-header card-header-warning  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="lblheader2" runat="server" CssClass="h4 card-title m-4"
                                                            Text="Re-Imbursement Master"></asp:Label>
                                                        <%--<h4 class="card-title">Master</h4>--%>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Employee </label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-primary mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <button id="btnAddConveyance" onserverclick="btnAddConveyance_Click" runat="server" class="btn btn-dark mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Style="height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
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
            <asp:PostBackTrigger ControlID="btnADD" />
            <asp:PostBackTrigger ControlID="btnSave" />
        </Triggers>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function EmployeeNameChange() {
            document.getElementById("<%=btnEmpChange.ClientID%>").click();
        }
        function TransportModeChange() {
            document.getElementById("<%=btnTransportModeChange.ClientID%>").click();
        }
        function DisableAddClick() {
            document.getElementById("<%=htmlAdd.ClientID%>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlAdd.ClientID %>").value = msg;
                document.getElementById("<%=btnADD.ClientID %>").click();
        }
        function DisableSaveClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
                msg = 'Wait..!';
                document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
            }


    </script>
</asp:Content>
