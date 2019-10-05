<%@ page title="Travelling Voucher" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_TravellingVoucher, App_Web_1zdtagca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_txtExpenseHead");
            if (o != null) {
                o.add_populating(function () {
                    o.set_contextKey($get("<%=txtEmployeeName.ClientID %>").value);
                });
            }
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
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title" Text="Travelling Voucher"></asp:Label>
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
                                                                            MinimumPrefixLength="1" ServiceMethod="GetActivetEmployeeByOffice_2Level_Help" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtEmployeeName" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <%--<div class="col-md-2">
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
                                                                </div>--%>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="card mt-1 mb-1">
                                                                        <div class="card-body">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            Expense Head<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtExpenseHead" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtExpenseHead" runat="server" ControlToValidate="txtExpenseHead"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Expense Head can not be blank"
                                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtExpenseHead" runat="server"
                                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtExpenseHead">
                                                                                        </AjaxTools:ValidatorCalloutExtender>

                                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                            runat="server" ID="ace_txtExpenseHead" BehaviorID="ace_txtExpenseHead" CompletionInterval="10"
                                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                            MinimumPrefixLength="1" ServiceMethod="GetHeadNameHelp" ServicePath="~/WService.asmx"
                                                                                            TargetControlID="txtExpenseHead" UseContextKey="true">
                                                                                        </AjaxTools:AutoCompleteExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label class="">Start Date<span class="text-danger">*</span></label>
                                                                                        <asp:TextBox ID="txtExpenseStartDate" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtExpenseStartDate" runat="server" ControlToValidate="txtExpenseStartDate"
                                                                                            Display="None" ErrorMessage="Start Date can not be blank !" ValidationGroup="save"
                                                                                            Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtExpenseStartDate" runat="server" Enabled="True"
                                                                                            PopupPosition="TopRight" TargetControlID="rfv_txtExpenseStartDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:CalendarExtender ID="ce_txtExpenseStartDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txtExpenseStartDate">
                                                                                        </AjaxTools:CalendarExtender>
                                                                                        <AjaxTools:MaskedEditExtender ID="mee_txtExpenseStartDate" runat="server" ClearTextOnInvalid="True"
                                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtExpenseStartDate"
                                                                                            UserDateFormat="DayMonthYear">
                                                                                        </AjaxTools:MaskedEditExtender>
                                                                                        <asp:RegularExpressionValidator ID="rev_txtExpenseStartDate" runat="server" ControlToValidate="txtExpenseStartDate"
                                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                            ValidationGroup="report">
                                                                                        </asp:RegularExpressionValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce2_txtExpenseStartDate" runat="server" Enabled="True"
                                                                                            TargetControlID="rev_txtExpenseStartDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtExpenseStartDate" runat="server"
                                                                                            TargetControlID="txtExpenseStartDate" WatermarkText="dd/mm/yyyy">
                                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label class="">End Date<span class="text-danger">*</span></label>
                                                                                        <asp:TextBox ID="txtExpenseEndDate" runat="server" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control" onchange="ProjectStageEndDateChange()"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtExpenseEndDate" runat="server" ControlToValidate="txtExpenseEndDate"
                                                                                            Display="None" ErrorMessage="End Date can not be blank !" ValidationGroup="save"
                                                                                            Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtExpenseEndDate" runat="server"
                                                                                            Enabled="True" PopupPosition="TopRight" TargetControlID="rfv_txtExpenseEndDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:CalendarExtender ID="ce_txtExpenseEndDate" runat="server" Format="dd/MM/yyyy"
                                                                                            TargetControlID="txtExpenseEndDate">
                                                                                        </AjaxTools:CalendarExtender>
                                                                                        <AjaxTools:MaskedEditExtender ID="mee_txtExpenseEndDate" runat="server" ClearTextOnInvalid="True"
                                                                                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                            CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtExpenseEndDate"
                                                                                            UserDateFormat="DayMonthYear">
                                                                                        </AjaxTools:MaskedEditExtender>
                                                                                        <asp:RegularExpressionValidator ID="rev_txtExpenseEndDate" runat="server" ControlToValidate="txtExpenseEndDate"
                                                                                            Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                            ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                            ValidationGroup="save">
                                                                                        </asp:RegularExpressionValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce2_txtExpenseEndDate" runat="server"
                                                                                            Enabled="True" TargetControlID="rev_txtExpenseEndDate">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:TextBoxWatermarkExtender ID="we_txtExpenseEndDate" runat="server"
                                                                                            TargetControlID="txtExpenseEndDate" WatermarkText="dd/mm/yyyy">
                                                                                        </AjaxTools:TextBoxWatermarkExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        <label class="">Amount <span id="span1" runat="server" class="text-danger">*</span></label>
                                                                                        <asp:TextBox ID="txtAmount" MaxLength="10" runat="server" CssClass="form-control text-right"
                                                                                            onfocus="this.select();" AutoComplete="off"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtAmount" runat="server" ControlToValidate="txtAmount"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Amount can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtAmount" runat="server"
                                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtAmount">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtAmount" runat="server" TargetControlID="txtAmount"
                                                                                            Enabled="true" FilterType="Numbers,Custom" ValidChars=".">
                                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <label class="label-on-left">Attachment <span id="span2" runat="server" class="text-danger">*</span></label>
                                                                                    <asp:FileUpload ID="FileUpload" runat="server" CssClass="custom-file" />
                                                                                </div>
                                                                                <div class="col-md-7">
                                                                                    <div class="form-group">
                                                                                        <label class="">
                                                                                            Remarks<span class="text-danger">*</span>
                                                                                        </label>
                                                                                        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" AutoComplete="off"
                                                                                            onfocus="this.select();" CssClass="form-control">
                                                                                        </asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfv_txtRemarks" runat="server"
                                                                                            ControlToValidate="txtRemarks"
                                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Remarks can not be blank !"
                                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtRemarks" runat="server" Enabled="True"
                                                                                            TargetControlID="rfv_txtRemarks">
                                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2 mt-4">
                                                                                    <input type="button" id="htmlAdd" runat="server" class="btn btn-danger " value="Add" onclick="DisableAddClick();" />
                                                                                    <asp:Button ID="btnADD" runat="server" CssClass="d-none" OnClick="btnADD_Click" />
                                                                                    <asp:Button ID="btnEmpChange" runat="server" CssClass="d-none" OnClick="btnEmpChange_Click" />
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
                                                                                                            CommandArgument='<%#Eval("TravellingVoucherDetailID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
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
                                                        <button id="btnAddTravelling" onserverclick="btnAddTravelling_Click" runat="server" class="btn btn-dark mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>
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
