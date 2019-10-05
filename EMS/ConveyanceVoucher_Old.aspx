<%@ page title="Conveyance Voucher" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_ConveyanceVoucher_Old, App_Web_1zdtagca" %>

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
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"
                                                            Text="Conveyance Voucher"></asp:Label>
                                                        <%--<h4 class="card-title">Master</h4>--%>
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
                                                                <div id="divEmployeeName" runat="server" class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label class="">Employee Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
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
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Designation Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtDesignationName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control" Enabled="false">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvtxtDesignationName" runat="server" ControlToValidate="txtDesignationName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Designation name can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtDesignationName" runat="server" Enabled="True"
                                                                            TargetControlID="rfvtxtDesignationName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label class="">Branch Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtBranchName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();" Enabled="false"></asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_Office" BehaviorID="ace_Office" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtBranchName" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtBranchName" runat="server" ControlToValidate="txtBranchName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Branch Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtBranchName" runat="server" PopupPosition="BottomRight"
                                                                            Enabled="True" TargetControlID="rfv_txtBranchName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Voucher Date<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtVoucherDate" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control" Enabled="false">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Voucher No<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtVoucherNo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control" Enabled="false">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Start Point<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:DropDownList ID="ddlStartPoint" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
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
                                                                        <asp:DropDownList ID="ddlEndPoint" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                            <asp:ListItem Text="OFFICE" Value="OFFICE"></asp:ListItem>
                                                                            <asp:ListItem Text="HOME" Value="HOME"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Distance Between Office & Home<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtDistanceBetweenOfficeHome" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control col-md-6 text-right">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtDistanceBetweenOfficeHome" runat="server"
                                                                            ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtDistanceBetweenOfficeHome">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 p-0">
                                                                    <table class="card">
                                                                        <tr class="card-header-warning">
                                                                            <th class="width80">
                                                                                <label class="text-white">Date</label>
                                                                            </th>
                                                                            <th>
                                                                                <label class="text-white">
                                                                                    City<span class="text-danger">*</span>
                                                                                </label>
                                                                            </th>
                                                                            <th>
                                                                                <label class="text-white">
                                                                                    From Place<span class="text-danger">*</span>
                                                                                </label>
                                                                            </th>
                                                                            <th>
                                                                                <label class="text-white">
                                                                                    To Place<span class="text-danger">*</span>
                                                                                </label>
                                                                            </th>
                                                                            <th>
                                                                                <label class="text-white">
                                                                                    Purpose Of Visit<span class="text-danger">*</span>
                                                                                </label>
                                                                            </th>
                                                                            <th>
                                                                                <label class="text-white">
                                                                                    Mode of Transport<span class="text-danger">*</span>
                                                                                </label>
                                                                            </th>
                                                                            <th class="width50">
                                                                                <label class="text-white">
                                                                                    Total Km<span class="text-danger">*</span>
                                                                                </label>
                                                                            </th>
                                                                            <th class="width50">
                                                                                <label class="text-white">
                                                                                    Less
                                                                                </label>
                                                                            </th>
                                                                            <th class="width50">
                                                                                <label class="text-white">
                                                                                    Net Km Payable
                                                                                </label>
                                                                            </th>
                                                                            <th class="width50">
                                                                                <label class="text-white">
                                                                                    Rate / Km
                                                                                </label>
                                                                            </th>
                                                                            <th class="width50">
                                                                                <label class="text-white">
                                                                                    Amount Claimed
                                                                                </label>
                                                                            </th>
                                                                            <th></th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <div class="form-group">
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
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
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
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtFromPlace" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtToPlace" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtPurposeOfVisit" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtModeofTransport" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtTotalKm" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right">
                                                                                    </asp:TextBox>
                                                                                    <AjaxTools:FilteredTextBoxExtender ID="fte_txtTotalKm" runat="server"
                                                                                        ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtTotalKm">
                                                                                    </AjaxTools:FilteredTextBoxExtender>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtLessKmfromResiToOffice" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right">
                                                                                    </asp:TextBox>
                                                                                    <AjaxTools:FilteredTextBoxExtender ID="fte_txtLessKmfromResiToOffice" runat="server"
                                                                                        ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtLessKmfromResiToOffice">
                                                                                    </AjaxTools:FilteredTextBoxExtender>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtNetKmPayable" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right">
                                                                                    </asp:TextBox>
                                                                                    <AjaxTools:FilteredTextBoxExtender ID="fte_txtNetKmPayable" runat="server"
                                                                                        ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtNetKmPayable">
                                                                                    </AjaxTools:FilteredTextBoxExtender>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtRateKm" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right" Enabled="false">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtAmountClaimed" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right" Enabled="false">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td class="">
                                                                                <input type="button" id="htmlAdd" runat="server" class="btn btn-danger" value="Add" onclick="DisableAddClick();" />
                                                                                <asp:Button ID="btnADD" runat="server" CssClass="d-none" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="12">
                                                                                <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;">
                                                                                    <asp:GridView ID="grdTransaction" runat="server" AllowPaging="false"
                                                                                        AutoGenerateColumns="false"
                                                                                        Width="100%" CssClass="table table-bordered table-hover"
                                                                                        AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                        CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                                        <Columns>

                                                                                            <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
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
                                                                            </td>
                                                                        </tr>
                                                                        <tr class="card-header-warning">
                                                                            <td class="text-right" colspan="6">
                                                                                <label class="text-white">Total :</label>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtGrandTotal" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right" Enabled="false">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtTotalLess" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right" Enabled="false">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtTotalNetKmPayable" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right" Enabled="false">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <asp:TextBox ID="txtTotalAmountClaimed" runat="server" AutoComplete="off"
                                                                                        onfocus="this.select();" CssClass="form-control text-right" Enabled="false">
                                                                                    </asp:TextBox>
                                                                                </div>
                                                                            </td>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="col-md-12 text-center">
                                                                    <input type="button" id="htmlSave" runat="server" class="btn btn-warning" value="Save" onclick="DisableSaveClick();" />
                                                                    <asp:Button ID="btnSave" runat="server" CssClass="d-none" OnClick="btnSave_Click" />
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                                                                </div>
                                                                <div class="col-md-12"><label>Less: (Km from Resi. To Office)</label></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
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
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">
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
