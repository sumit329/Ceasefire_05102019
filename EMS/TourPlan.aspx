<%@ page title="Tour Plan" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_TourPlan, App_Web_1zdtagca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
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
                                        <div class="card" id="cardInput" runat="server">
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
                                                                            MinimumPrefixLength="1" ServiceMethod="GetActivetEmployeeByOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtEmployeeName" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="card mt-1 mb-1">
                                                                        <div class="card-body">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            From City<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtFromCity" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtFromCity" runat="server"
                                                                                            ControlToValidate="txtFromCity" SetFocusOnError="true" Display="None" ErrorMessage="From City can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtFromCity" runat="server" Enabled="True" TargetControlID="rfv_txtFromCity">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                            ID="ace_txtFromCity" runat="server" BehaviorID="ace_txtFromCity"
                                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                            MinimumPrefixLength="1" ServiceMethod="GetCityHelp" ServicePath="~/WService.asmx"
                                                                                            TargetControlID="txtFromCity" UseContextKey="true">
                                                                                        </AjaxTools:AutoCompleteExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            To City<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtToCity" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtToCity" runat="server"
                                                                                            ControlToValidate="txtToCity"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="To City can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtToCity" runat="server" Enabled="True"
                                                                                            TargetControlID="rfv_txtToCity">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                            ID="ace_txtToCity" runat="server" BehaviorID="ace_txtToCity"
                                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                            MinimumPrefixLength="1" ServiceMethod="GetCityHelp" ServicePath="~/WService.asmx"
                                                                                            TargetControlID="txtToCity" UseContextKey="true">
                                                                                        </AjaxTools:AutoCompleteExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label>From Date</label>
                                                                                        <asp:TextBox ID="txtFromDate" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtFromDate" runat="server" ControlToValidate="txtFromDate"
                                                                                            Display="None" ErrorMessage="From Date can not be blank !" ValidationGroup="report"
                                                                                            Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtFromDate" runat="server" Enabled="True"
                                                                                            PopupPosition="TopRight" TargetControlID="rfv_txtFromDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:CalendarExtender ID="ce_txtFromDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtFromDate">
                                                                                        </AjaxTools:CalendarExtender>
                                                                                        <AjaxTools:MaskedEditExtender ID="mee_txtFromDate" runat="server" ClearTextOnInvalid="True"
                                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtFromDate"
                                                                                            UserDateFormat="DayMonthYear">
                                                                                        </AjaxTools:MaskedEditExtender>
                                                                                        <asp:RegularExpressionValidator ID="rev_txtFromDate" runat="server" ControlToValidate="txtFromDate"
                                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                            ValidationGroup="report">
                                                                                        </asp:RegularExpressionValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce1_txtFromDate" runat="server" Enabled="True"
                                                                                            TargetControlID="rev_txtFromDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtFromDate" runat="server"
                                                                                            TargetControlID="txtFromDate" WatermarkText="dd/mm/yyyy">
                                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label>To Date</label>
                                                                                        <asp:TextBox ID="txtToDate" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control" onchange="ToDateChange()"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtToDate" runat="server" ControlToValidate="txtToDate"
                                                                                            Display="None" ErrorMessage="To Date can not be blank !" ValidationGroup="report"
                                                                                            Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtToDate" runat="server" Enabled="True"
                                                                                            PopupPosition="TopRight" TargetControlID="rfv_txtToDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:CalendarExtender ID="ce_txtToDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtToDate">
                                                                                        </AjaxTools:CalendarExtender>
                                                                                        <AjaxTools:MaskedEditExtender ID="mee_txtToDate" runat="server" ClearTextOnInvalid="True"
                                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtToDate"
                                                                                            UserDateFormat="DayMonthYear">
                                                                                        </AjaxTools:MaskedEditExtender>
                                                                                        <asp:RegularExpressionValidator ID="rev_txtToDate" runat="server" ControlToValidate="txtToDate"
                                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                            ValidationGroup="report">
                                                                                        </asp:RegularExpressionValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce1_txtToDate" runat="server" Enabled="True"
                                                                                            TargetControlID="rev_txtToDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtToDate" runat="server"
                                                                                            TargetControlID="txtToDate" WatermarkText="dd/mm/yyyy">
                                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label>Total Days</label>
                                                                                        <asp:TextBox ID="txtTotalDays" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control" Enabled="false"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4">
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
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            Transport Mode <span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtTransportMode" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
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
                                                                            <div class="row">
                                                                                <div class="col-md-3 mt-4 pt-2">
                                                                                    <asp:CheckBox ID="chkIsNeedTravelDeskHelp" runat="server" Text="Need Travel Desk Help" CssClass="" OnCheckedChanged="chkIsNeedTravelDeskHelp_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                                                </div>
                                                                                <div class="col-md-12" id="divTravelDesk" runat="server">
                                                                                    <div class="card mb-1">
                                                                                        <div class="card-header card-header-info pt-1 pb-1 h5">Travel Desk</div>
                                                                                        <div class="card-body">
                                                                                            <div class="container-fluid">
                                                                                                <div class="row">
                                                                                                    <div class="col-md-2 mt-4 pt-2">
                                                                                                        <asp:CheckBox ID="chkIsTravelDeskTicketBooking" runat="server" Text="Ticket Booking" CssClass="" OnCheckedChanged="chkIsTravelDeskTicketBooking_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                                                                    </div>
                                                                                                    <div class="col-md-1">
                                                                                                        <div class="form-group">
                                                                                                            <label class="">Time</label>
                                                                                                            <asp:TextBox ID="txtTime" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                                                            <AjaxTools:MaskedEditExtender ID="mee_txtTime" runat="server" TargetControlID="txtTime"
                                                                                                                Mask="99:99" MaskType="Time" UserTimeFormat="None" ClearTextOnInvalid="True"
                                                                                                                AcceptAMPM="false">
                                                                                                            </AjaxTools:MaskedEditExtender>
                                                                                                            <asp:RegularExpressionValidator ID="rev_txtTime" runat="server"
                                                                                                                ErrorMessage="Please enter valid date(hh:mm)" Display="None" ControlToValidate="txtTime"
                                                                                                                ValidationExpression="^((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))$|^([01]\d|2[0-3])(:[0-5]\d){1,2}$"></asp:RegularExpressionValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtTime" runat="server" Enabled="True"
                                                                                                                TargetControlID="rev_txtTime">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                            <asp:RequiredFieldValidator ID="rfv_txtTime" runat="server" ControlToValidate="txtTime"
                                                                                                                SetFocusOnError="true" Display="None" ErrorMessage="Time can not be blank !"
                                                                                                                ValidationGroup="save" Font-Size="8pt">
                                                                                                            </asp:RequiredFieldValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce2_txtTime" runat="server" PopupPosition="BottomRight"
                                                                                                                Enabled="True" TargetControlID="rfv_txtTime">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-2">
                                                                                                        <div class="form-group">
                                                                                                            <label class="">
                                                                                                                Class
                                                                                                            </label>
                                                                                                            <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control text-uppercase">
                                                                                                                <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                                                                                                                <asp:ListItem Text="PRIMARY" Value="PRIMARY"></asp:ListItem>
                                                                                                                <asp:ListItem Text="ECONOMY" Value="ECONOMY"></asp:ListItem>
                                                                                                            </asp:DropDownList>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="row">
                                                                                                    <div class="col-md-2 mt-4 pt-2">
                                                                                                        <asp:CheckBox ID="chkIsTravelDeskHotelBooking" runat="server" Text="Hotel Booking" CssClass="" OnCheckedChanged="chkIsTravelDeskHotelBooking_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                                                                    </div>
                                                                                                    <div class="col-md-4">
                                                                                                        <div class="form-group">
                                                                                                            <label class="">
                                                                                                                Town
                                                                                                            </label>
                                                                                                            <asp:TextBox ID="txtTown" runat="server" AutoComplete="off"
                                                                                                                onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                                            </asp:TextBox>
                                                                                                            <asp:RequiredFieldValidator ID="rfv_txtTown" runat="server"
                                                                                                                ControlToValidate="txtTown"
                                                                                                                SetFocusOnError="true" Display="None" ErrorMessage="Town can not be blank !"
                                                                                                                ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtTown" runat="server" Enabled="True"
                                                                                                                TargetControlID="rfv_txtTown">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                            <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                                                ID="ace_txtTown" runat="server" BehaviorID="ace_txtTown"
                                                                                                                CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                                                                DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                                                MinimumPrefixLength="1" ServiceMethod="GetCityHelp" ServicePath="~/WService.asmx"
                                                                                                                TargetControlID="txtTown" UseContextKey="true">
                                                                                                            </AjaxTools:AutoCompleteExtender>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-2">
                                                                                                        <div class="form-group">
                                                                                                            <label>Check-In Date</label>
                                                                                                            <asp:TextBox ID="txtCheckInDate" runat="server" AutoComplete="off"
                                                                                                                onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                                                                            <asp:RequiredFieldValidator ID="rfv_txtCheckInDate" runat="server" ControlToValidate="txtCheckInDate"
                                                                                                                Display="None" ErrorMessage="Check-In Date can not be blank !" ValidationGroup="report"
                                                                                                                Font-Size="8pt">
                                                                                                            </asp:RequiredFieldValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtCheckInDate" runat="server" Enabled="True"
                                                                                                                PopupPosition="TopRight" TargetControlID="rfv_txtCheckInDate">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                            <AjaxTools:CalendarExtender ID="ce_txtCheckInDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtCheckInDate">
                                                                                                            </AjaxTools:CalendarExtender>
                                                                                                            <AjaxTools:MaskedEditExtender ID="mee_txtCheckInDate" runat="server" ClearTextOnInvalid="True"
                                                                                                                CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                                                CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                                                CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtCheckInDate"
                                                                                                                UserDateFormat="DayMonthYear">
                                                                                                            </AjaxTools:MaskedEditExtender>
                                                                                                            <asp:RegularExpressionValidator ID="rev_txtCheckInDate" runat="server" ControlToValidate="txtCheckInDate"
                                                                                                                Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                                                ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                                                ValidationGroup="report">
                                                                                                            </asp:RegularExpressionValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce1_txtCheckInDate" runat="server" Enabled="True"
                                                                                                                TargetControlID="rev_txtCheckInDate">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                            <AjaxTools:TextBoxWatermarkExtender ID="we_txtCheckInDate" runat="server"
                                                                                                                TargetControlID="txtCheckInDate" WatermarkText="dd/mm/yyyy">
                                                                                                            </AjaxTools:TextBoxWatermarkExtender>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-1">
                                                                                                        <div class="form-group">
                                                                                                            <label class="">Time</label>
                                                                                                            <asp:TextBox ID="txtCheckInTime" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                                                            <AjaxTools:MaskedEditExtender ID="mee_txtCheckInTime" runat="server" TargetControlID="txtCheckInTime"
                                                                                                                Mask="99:99" MaskType="Time" UserTimeFormat="None" ClearTextOnInvalid="True"
                                                                                                                AcceptAMPM="false">
                                                                                                            </AjaxTools:MaskedEditExtender>
                                                                                                            <asp:RegularExpressionValidator ID="rev_txtCheckInTime" runat="server"
                                                                                                                ErrorMessage="Please enter valid date(hh:mm)" Display="None" ControlToValidate="txtCheckInTime"
                                                                                                                ValidationExpression="^((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))$|^([01]\d|2[0-3])(:[0-5]\d){1,2}$"></asp:RegularExpressionValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtCheckInTime" runat="server" Enabled="True"
                                                                                                                TargetControlID="rev_txtCheckInTime">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                            <asp:RequiredFieldValidator ID="rfv_txtCheckInTime" runat="server" ControlToValidate="txtCheckInTime"
                                                                                                                SetFocusOnError="true" Display="None" ErrorMessage="Check-In Time can not be blank !"
                                                                                                                ValidationGroup="save" Font-Size="8pt">
                                                                                                            </asp:RequiredFieldValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce1_txtCheckInTime" runat="server" PopupPosition="BottomRight"
                                                                                                                Enabled="True" TargetControlID="rfv_txtCheckInTime">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-2">
                                                                                                        <div class="form-group">
                                                                                                            <label>Check-Out Date</label>
                                                                                                            <asp:TextBox ID="txtCheckOutDate" runat="server" AutoComplete="off"
                                                                                                                onfocus="this.select();" CssClass="form-control" onchange="CheckOutDateChange()"></asp:TextBox>
                                                                                                            <asp:RequiredFieldValidator ID="rfv_txtCheckOutDate" runat="server" ControlToValidate="txtCheckOutDate"
                                                                                                                Display="None" ErrorMessage="Check-Out Date can not be blank !" ValidationGroup="report"
                                                                                                                Font-Size="8pt">
                                                                                                            </asp:RequiredFieldValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtCheckOutDate" runat="server" Enabled="True"
                                                                                                                PopupPosition="TopRight" TargetControlID="rfv_txtCheckOutDate">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                            <AjaxTools:CalendarExtender ID="ce_txtCheckOutDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtCheckOutDate">
                                                                                                            </AjaxTools:CalendarExtender>
                                                                                                            <AjaxTools:MaskedEditExtender ID="mee_txtCheckOutDate" runat="server" ClearTextOnInvalid="True"
                                                                                                                CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                                                CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                                                CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtCheckOutDate"
                                                                                                                UserDateFormat="DayMonthYear">
                                                                                                            </AjaxTools:MaskedEditExtender>
                                                                                                            <asp:RegularExpressionValidator ID="rev_txtCheckOutDate" runat="server" ControlToValidate="txtCheckOutDate"
                                                                                                                Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                                                ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                                                ValidationGroup="report">
                                                                                                            </asp:RegularExpressionValidator>
                                                                                                            <AjaxTools:ValidatorCalloutExtender ID="vce1_txtCheckOutDate" runat="server" Enabled="True"
                                                                                                                TargetControlID="rev_txtCheckOutDate">
                                                                                                            </AjaxTools:ValidatorCalloutExtender>
                                                                                                            <AjaxTools:TextBoxWatermarkExtender ID="we_txtCheckOutDate" runat="server"
                                                                                                                TargetControlID="txtCheckOutDate" WatermarkText="dd/mm/yyyy">
                                                                                                            </AjaxTools:TextBoxWatermarkExtender>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-1">
                                                                                                        <div class="form-group">
                                                                                                            <label>No&nbsp;Of&nbsp;Days</label>
                                                                                                            <asp:TextBox ID="txtNoOfDays" runat="server" AutoComplete="off"
                                                                                                                onfocus="this.select();" CssClass="form-control" Enabled="false"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-12 text-right">
                                                                                    <input type="button" id="htmlAdd" runat="server" class="btn btn-danger " value="Add" onclick="DisableAddClick();" />
                                                                                    <asp:Button ID="btnADD" runat="server" CssClass="d-none" OnClick="btnADD_Click" />
                                                                                    <asp:Button ID="btnEmpChange" runat="server" CssClass="d-none" OnClick="btnEmpChange_Click" />
                                                                                    <asp:Button ID="btnToDateChange" runat="server" CssClass="d-none" OnClick="btnToDateChange_Click" />
                                                                                    <asp:Button ID="btnCheckOutDateChange" runat="server" CssClass="d-none" OnClick="btnCheckOutDateChange_Click" />
                                                                                </div>
                                                                            </div>
                                                                            <hr />
                                                                            <div class="row">
                                                                                <div class="col-md-12 vw80">
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
                                                                                                            CommandArgument='<%#Eval("TourPlanDetailID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
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
                                                            Text=""></asp:Label>
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
                                                        <button id="btnAddTour" onserverclick="btnAddTour_Click" runat="server" class="btn btn-dark mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>
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
        function ToDateChange() {
            document.getElementById("<%=btnToDateChange.ClientID%>").click();
        }
        function CheckOutDateChange() {
            document.getElementById("<%=btnCheckOutDateChange.ClientID%>").click();
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
