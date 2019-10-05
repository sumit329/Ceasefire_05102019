<%@ page title="Project Creation" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="PMS_ProjectCreation, App_Web_jsic22tx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <style type="text/css">
        .bg-green{background-color:#63b967;opacity:0.5;}
    </style>
    <script language="javascript" type="text/javascript">

        function SetZIndex(control, args) {
            // Set auto complete extender control's z-index to a high value
            // so it will appear on top of, not under, the ModalPopUp extended panel.
            control._completionListElement.style.zIndex = 99999999;

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
                                    <div class="col-md-11">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-11 text-left">
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
                                <div class="row vw85">
                                    <div class="col-md-12">
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-success">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
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
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">Order Code</label>
                                                                        <asp:Label ID="lblOrderCode" runat="server" CssClass="form-control"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <div class="form-group">
                                                                        <label class="">Customer Name</label>
                                                                        <asp:Label ID="lblCustomerName" runat="server" CssClass="form-control"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Address</label>
                                                                        <asp:Label ID="lblAddress" runat="server" CssClass="form-control"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:Label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Project Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtProjectName" runat="server" CssClass="form-control text-uppercase"
                                                                            MaxLength="200" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Project Owner<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtProjectOwner" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtProjectOwner" runat="server" ControlToValidate="txtProjectOwner"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Project Owner can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtProjectOwner" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtProjectOwner">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_txtProjectOwner" BehaviorID="ace_txtProjectOwner" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetActivetEmployeeByOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtProjectOwner" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>Start Date</label>
                                                                        <asp:TextBox ID="txtStartDate" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtStartDate" runat="server" ControlToValidate="txtStartDate"
                                                                            Display="None" ErrorMessage="Start Date can not be blank !" ValidationGroup="report"
                                                                            Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtStartDate" runat="server" Enabled="True"
                                                                            PopupPosition="TopRight" TargetControlID="rfv_txtStartDate">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:CalendarExtender ID="ce_txtStartDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtStartDate">
                                                                        </AjaxTools:CalendarExtender>
                                                                        <AjaxTools:MaskedEditExtender ID="mee_txtStartDate" runat="server" ClearTextOnInvalid="True"
                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtStartDate"
                                                                            UserDateFormat="DayMonthYear">
                                                                        </AjaxTools:MaskedEditExtender>
                                                                        <asp:RegularExpressionValidator ID="rev_txtStartDate" runat="server" ControlToValidate="txtStartDate"
                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                            ValidationGroup="report">
                                                                        </asp:RegularExpressionValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce1_txtStartDate" runat="server" Enabled="True"
                                                                            TargetControlID="rev_txtStartDate">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtStartDate" runat="server"
                                                                            TargetControlID="txtStartDate" WatermarkText="dd/mm/yyyy">
                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>End Date</label>
                                                                        <asp:TextBox ID="txtEndDate" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control" onchange="EndDateChange()"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtEndDate" runat="server" ControlToValidate="txtEndDate"
                                                                            Display="None" ErrorMessage="End Date can not be blank !" ValidationGroup="report"
                                                                            Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtEndDate" runat="server" Enabled="True"
                                                                            PopupPosition="TopRight" TargetControlID="rfv_txtEndDate">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:CalendarExtender ID="ce_txtEndDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtEndDate">
                                                                        </AjaxTools:CalendarExtender>
                                                                        <AjaxTools:MaskedEditExtender ID="mee_txtEndDate" runat="server" ClearTextOnInvalid="True"
                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtEndDate"
                                                                            UserDateFormat="DayMonthYear">
                                                                        </AjaxTools:MaskedEditExtender>
                                                                        <asp:RegularExpressionValidator ID="rev_txtEndDate" runat="server" ControlToValidate="txtEndDate"
                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                            ValidationGroup="report">
                                                                        </asp:RegularExpressionValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce1_txtEndDate" runat="server" Enabled="True"
                                                                            TargetControlID="rev_txtEndDate">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtEndDate" runat="server"
                                                                            TargetControlID="txtEndDate" WatermarkText="dd/mm/yyyy">
                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>Total Days</label>
                                                                        <asp:TextBox ID="txtTotalDays" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control text-right" Enabled="false"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Remarks <span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control text-uppercase" TextMode="MultiLine"
                                                                            MaxLength="500" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="card">
                                                                <div class="card-body">
                                                                    <div class="container-fluid">
                                                                        <div class="row">
                                                                            <div class="col-md-4">
                                                                                <div class="form-group">
                                                                                    <label class="">Project Stage<span class="text-danger">*</span></label>
                                                                                    <asp:TextBox ID="txtProjectStage" runat="server" CssClass="form-control text-uppercase"
                                                                                        AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="rfv_txtProjectStage" runat="server" ControlToValidate="txtProjectStage"
                                                                                        SetFocusOnError="true" Display="None" ErrorMessage="Project Stage can not be blank"
                                                                                        ValidationGroup="save" Font-Size="8pt">
                                                                                    </asp:RequiredFieldValidator>
                                                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtProjectStage" runat="server"
                                                                                        PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtProjectStage">
                                                                                    </AjaxTools:ValidatorCalloutExtender>
                                                                                    <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                        runat="server" ID="ace_txtProjectStage" BehaviorID="ace_txtProjectStage" CompletionInterval="10"
                                                                                        CompletionListCssClass="autocomplete_completionListElement"
                                                                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                                        CompletionListItemCssClass="autocomplete_listItem"
                                                                                        DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                        MinimumPrefixLength="1" ServiceMethod="GetProjectStageHelp" ServicePath="~/WService.asmx"
                                                                                        TargetControlID="txtProjectStage" UseContextKey="true">
                                                                                    </AjaxTools:AutoCompleteExtender>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <div class="form-group">
                                                                                    <label class="">Sequence<span class="text-danger">*</span></label>
                                                                                    <asp:TextBox ID="txtSequence" runat="server" CssClass="form-control text-uppercase"
                                                                                        MaxLength="2" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                    <AjaxTools:FilteredTextBoxExtender ID="fte_txtSequence" runat="server" FilterMode="ValidChars"
                                                                                        FilterType="Numbers" TargetControlID="txtSequence" ValidChars="">
                                                                                    </AjaxTools:FilteredTextBoxExtender>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1 mr-2">
                                                                                <div class="form-group">
                                                                                    <label class="">Dependent&nbsp;On<span class="text-danger">*</span></label>
                                                                                    <asp:TextBox ID="txtDependentOn" runat="server" CssClass="form-control text-uppercase"
                                                                                        MaxLength="2" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                    <AjaxTools:FilteredTextBoxExtender ID="fte_txtDependentOn" runat="server" FilterMode="ValidChars"
                                                                                        FilterType="Numbers" TargetControlID="txtDependentOn" ValidChars="">
                                                                                    </AjaxTools:FilteredTextBoxExtender>
                                                                                </div>
                                                                            </div>
                                                                            <div class="ml-3" style="width: 100px;">
                                                                                <div class="form-group">
                                                                                    <label class="">Start Date<span class="text-danger">*</span></label>
                                                                                    <asp:TextBox ID="txtProjectStageStartDate" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="rfv_txtProjectStageStartDate" runat="server" ControlToValidate="txtProjectStageStartDate"
                                                                                        Display="None" ErrorMessage="Start Date can not be blank !" ValidationGroup="save"
                                                                                        Font-Size="8pt">
                                                                                    </asp:RequiredFieldValidator>
                                                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtProjectStageStartDate" runat="server" Enabled="True"
                                                                                        PopupPosition="TopRight" TargetControlID="rfv_txtProjectStageStartDate">
                                                                                    </AjaxTools:ValidatorCalloutExtender>
                                                                                    <AjaxTools:CalendarExtender ID="ce_txtProjectStageStartDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtProjectStageStartDate">
                                                                                    </AjaxTools:CalendarExtender>
                                                                                    <AjaxTools:MaskedEditExtender ID="mee_txtProjectStageStartDate" runat="server" ClearTextOnInvalid="True"
                                                                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                        CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtProjectStageStartDate"
                                                                                        UserDateFormat="DayMonthYear">
                                                                                    </AjaxTools:MaskedEditExtender>
                                                                                    <asp:RegularExpressionValidator ID="rev_txtProjectStageStartDate" runat="server" ControlToValidate="txtProjectStageStartDate"
                                                                                        Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                        ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                        ValidationGroup="report">
                                                                                    </asp:RegularExpressionValidator>
                                                                                    <AjaxTools:ValidatorCalloutExtender ID="vce2_txtProjectStageStartDate" runat="server" Enabled="True"
                                                                                        TargetControlID="rev_txtProjectStageStartDate">
                                                                                    </AjaxTools:ValidatorCalloutExtender>
                                                                                    <AjaxTools:TextBoxWatermarkExtender ID="we_txtProjectStageStartDate" runat="server"
                                                                                        TargetControlID="txtProjectStageStartDate" WatermarkText="dd/mm/yyyy">
                                                                                    </AjaxTools:TextBoxWatermarkExtender>
                                                                                </div>
                                                                            </div>
                                                                            <div class="ml-3" style="width: 100px;">
                                                                                <div class="form-group">
                                                                                    <label class="">End Date<span class="text-danger">*</span></label>
                                                                                    <asp:TextBox ID="txtProjectStageEndDate" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control" onchange="ProjectStageEndDateChange()"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="rfv_txtProjectStageEndDate" runat="server" ControlToValidate="txtProjectStageEndDate"
                                                                                        Display="None" ErrorMessage="End Date can not be blank !" ValidationGroup="save"
                                                                                        Font-Size="8pt">
                                                                                    </asp:RequiredFieldValidator>
                                                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtProjectStageEndDate" runat="server"
                                                                                        Enabled="True" PopupPosition="TopRight" TargetControlID="rfv_txtProjectStageEndDate">
                                                                                    </AjaxTools:ValidatorCalloutExtender>
                                                                                    <AjaxTools:CalendarExtender ID="ce_txtProjectStageEndDate" runat="server" Format="dd/MM/yyyy"
                                                                                        TargetControlID="txtProjectStageEndDate">
                                                                                    </AjaxTools:CalendarExtender>
                                                                                    <AjaxTools:MaskedEditExtender ID="mee_txtProjectStageEndDate" runat="server" ClearTextOnInvalid="True"
                                                                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                        CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtProjectStageEndDate"
                                                                                        UserDateFormat="DayMonthYear">
                                                                                    </AjaxTools:MaskedEditExtender>
                                                                                    <asp:RegularExpressionValidator ID="rev_txtProjectStageEndDate" runat="server" ControlToValidate="txtProjectStageEndDate"
                                                                                        Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                        ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                        ValidationGroup="save">
                                                                                    </asp:RegularExpressionValidator>
                                                                                    <AjaxTools:ValidatorCalloutExtender ID="vce2_txtProjectStageEndDate" runat="server"
                                                                                        Enabled="True" TargetControlID="rev_txtProjectStageEndDate">
                                                                                    </AjaxTools:ValidatorCalloutExtender>
                                                                                    <AjaxTools:TextBoxWatermarkExtender ID="we_txtProjectStageEndDate" runat="server"
                                                                                        TargetControlID="txtProjectStageEndDate" WatermarkText="dd/mm/yyyy">
                                                                                    </AjaxTools:TextBoxWatermarkExtender>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <div class="form-group">
                                                                                    <label class="">Total&nbsp;Days<span class="text-danger">*</span></label>
                                                                                    <asp:TextBox ID="txtProjectStageTotalDays" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control" Enabled="false"></asp:TextBox>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1 mt-4">
                                                                                <div class="form-group">
                                                                                    <asp:Button ID="btnAssign" runat="server" CssClass="btn btn-success" Text="Assign" OnClick="btnAssign_Click"></asp:Button>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1 mt-4">
                                                                                <div class="form-group">
                                                                                    <asp:Button ID="btnEndDateChange" runat="server" CssClass="d-none" OnClick="btnEndDateChange_Click" />
                                                                                    <asp:Button ID="btnProjectStageEndDateChange" runat="server" CssClass="d-none" OnClick="btnProjectStageEndDateChange_Click" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <asp:Panel ID="pnlProjectStage" runat="server" ScrollBars="Auto" Style="height: auto; width: auto;">
                                                                                    <asp:GridView ID="grdProjectStage" runat="server" AllowPaging="true"
                                                                                        AutoGenerateColumns="false"
                                                                                        Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="ProjectStageID"
                                                                                        AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                        CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                                        <Columns>
                                                                                            <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" CommandName="Delete"
                                                                                                        CommandArgument='<%#Eval("ProjectStageID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                                            runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                                            TargetControlID="btnDelete">
                                                                                                        </AjaxTools:ConfirmButtonExtender>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Center" Width="100px" Wrap="false" CssClass="col-md-2" />
                                                                                                <ItemStyle Wrap="false" Width="100px" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Container.DataItemIndex+1 %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Project Stages">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblProjectStages" runat="server" Text='<%#Eval("Project Stages")%>'></asp:Label>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                                <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Sequence">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Sequence")%>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                                <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Dependent On">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Dependent On")%>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                                <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Start Date">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Start Date")%>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                                <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="End Date">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("End Date")%>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                                                <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Total Days">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Total Days")%>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                                                <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
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
                                                    <div class="row">
                                                        <div class="col-md-12 text-right">
                                                            <asp:Button ID="btnBacK" runat="server" Text="Back" CssClass="btn btn-success" OnClick="btnBacK_Click" />
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
                                            <div class="card-header card-header-success  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-danger mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-primary mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="JobOrderID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting" OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-success" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("JobOrderID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
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
            <asp:PostBackTrigger ControlID="lnkExport" />
        </Triggers>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function EndDateChange() {
            document.getElementById("<%=btnEndDateChange.ClientID%>").click();
        }
        function ProjectStageEndDateChange() {
            document.getElementById("<%=btnProjectStageEndDateChange.ClientID%>").click();
        }

    </script>
    <asp:Button ID="btnmpeAssign" runat="server" CssClass="d-none" Text=""></asp:Button>
    <AjaxTools:ModalPopupExtender ID="mpeAssign" runat="server" BackgroundCssClass="bg-green"
        CancelControlID="btnmpeAssign" DropShadow="false" PopupControlID="pnlmpeAssign" PopupDragHandleControlID="pnlmpeAssign"
        TargetControlID="btnmpeAssign">
    </AjaxTools:ModalPopupExtender>
    <asp:Panel ID="pnlmpeAssign" runat="server" BackColor="White" BorderStyle="None" Height="350px"
        ScrollBars="Auto">
        <asp:UpdatePanel ID="upnlmpeAssign" runat="server">
            <ContentTemplate>
                <div class="modal-content vw85">
                    <div class="modal-header">
                        <h4 class="modal-title">Team Assign Window</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Member Name<span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txtMemberName" runat="server" AutoComplete="off"
                                       AutoPostBack="true" onfocus="this.select();" CssClass="form-control" OnTextChanged="txtMemberName_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_txtMemberName" runat="server" ControlToValidate="txtMemberName"
                                        SetFocusOnError="true" Display="None" ErrorMessage="Member Name can not be blank"
                                        ValidationGroup="save" Font-Size="8pt">
                                    </asp:RequiredFieldValidator>
                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtMemberName" runat="server"
                                        PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtMemberName">
                                    </AjaxTools:ValidatorCalloutExtender>
                                    <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                        runat="server" ID="ace_txtMemberName" BehaviorID="ace_txtMemberName" CompletionInterval="10"
                                        OnClientShown="SetZIndex" CompletionListCssClass="autocomplete_completionListElement"
                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                        CompletionListItemCssClass="autocomplete_listItem"
                                        DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                        MinimumPrefixLength="1" ServiceMethod="GetActivetEmployeeByOfficeHelp" ServicePath="~/WService.asmx"
                                        TargetControlID="txtMemberName" UseContextKey="true">
                                    </AjaxTools:AutoCompleteExtender>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Email ID<span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txtEmailID" runat="server" AutoComplete="off"
                                        MaxLength="100" onfocus="this.select();" CssClass="form-control">
                                    </asp:TextBox>
                                    <asp:RegularExpressionValidator ID="rev_txtEmailID" runat="server" ValidationGroup="save"
                                        ControlToValidate="txtEmailID" Display="None" ErrorMessage="Enter valid EmailId !"
                                        SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtEmailID" PopupPosition="BottomRight"
                                        runat="server" TargetControlID="rev_txtEmailID">
                                    </AjaxTools:ValidatorCalloutExtender>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>Phone<span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txtPhoneNo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                        MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                    </asp:TextBox>
                                    <AjaxTools:FilteredTextBoxExtender ID="fte_txtPhoneNo" runat="server" FilterMode="ValidChars"
                                        FilterType="Numbers" TargetControlID="txtPhoneNo" ValidChars="">
                                    </AjaxTools:FilteredTextBoxExtender>
                                </div>
                            </div>
                            <div class="col-md-1 mt-4 pt-1">
                                <asp:Button ID="btnAddMember" runat="server" CssClass="btn btn-danger" Text="Add" OnClick="btnAddMember_Click" />

                            </div>
                        </div>
                        <div class="row" style="height: 100px">
                            <div class="col-md-12">
                                <asp:Panel ID="pnlMember" runat="server" ScrollBars="Auto" Style="height: 200px; width:auto">
                                    <asp:GridView ID="grdMember" runat="server" AllowPaging="false"
                                        AutoGenerateColumns="false"
                                        Width="100%" CssClass="table table-bordered table-hover"
                                        AllowSorting="false" EmptyDataText="Record Not Available..." DataKeyNames="ProjectStageTeamID"
                                        CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                        <Columns>
                                            <%--<asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" CommandName="Delete"
                                                        CommandArgument='<%#Eval("ProjectStageTeamID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                            runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                            TargetControlID="btnDelete">
                                                        </AjaxTools:ConfirmButtonExtender>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" Width="100px" Wrap="false" CssClass="col-md-2" />
                                                <ItemStyle Wrap="false" Width="100px" />
                                            </asp:TemplateField>--%>
                                            <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                                <HeaderStyle Wrap="false" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Member Name" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Eval("Member Name") %>
                                                </ItemTemplate>
                                                <HeaderStyle Wrap="false" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email ID" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Eval("Email ID") %>
                                                </ItemTemplate>
                                                <HeaderStyle Wrap="false" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Phone" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <%#Eval("Phone") %>
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
                    <div class="modal-footer">
                        <asp:Button ID="btnAssignClose" runat="server" CssClass="btn btn-default" Text="Close" OnClick="btnAssignClose_Click"></asp:Button>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
</asp:Content>
