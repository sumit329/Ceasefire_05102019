<%@ page title="Assets Management" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_AssetsManagement, App_Web_4xfo1so1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
      <script type="text/javascript">

        function OpenNewPopUpWindow(oUrl, oWidth, oHeight, oQString) {
            var cUrl = '';
            if (oQString != '') {
                cUrl = oUrl + "?" + oQString;
            }
            else {
                cUrl = oUrl;
            }

            window.open(cUrl, '_blank');
            return false;
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
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-info">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                        <%--<h4 class="card-title">Assets Management</h4>--%>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="">Branch Name<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtBranchName" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                    runat="server" ID="ace_Office" BehaviorID="ace_Office" CompletionInterval="10"
                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtBranchName" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="">Assets Group<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtAssetsGroup" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                    runat="server" ID="ace_AssetsGroup" BehaviorID="ace_AssetsGroup" CompletionInterval="10"
                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetItemGroup_WithoutNotFound_Help" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtAssetsGroup" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Assets Code<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtAssetsCode" runat="server" CssClass="form-control text-uppercase"
                                                                    MaxLength="20" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="">Assets Name<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtAssetsName" runat="server" CssClass="form-control text-uppercase"
                                                                    MaxLength="200" AutoComplete="off" onfocus="this.select();"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-1">
                                                            <div class="form-group">
                                                                <label class="">Qty<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtQty" runat="server" CssClass="form-control text-uppercase text-right"
                                                                    MaxLength="5" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtQty" runat="server" FilterType="Numbers"
                                                                    TargetControlID="txtQty">
                                                                </AjaxTools:FilteredTextBoxExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Assets Make<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtAssetsMake" runat="server" CssClass="form-control text-uppercase"
                                                                    MaxLength="100" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Assets Owner<span class="text-danger">*</span></label>
                                                                <asp:DropDownList ID="ddlAssetsOwner" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();">
                                                                    <asp:ListItem Text="COMPANY" Value="COMPANY"></asp:ListItem>
                                                                    <asp:ListItem Text="LANDLORD" Value="LANDLORD"></asp:ListItem>
                                                                    <asp:ListItem Text="LEASED" Value="LEASED"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Status<span class="text-danger">*</span></label>
                                                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();">
                                                                    <asp:ListItem Text="WORKING" Value="WORKING"></asp:ListItem>
                                                                    <asp:ListItem Text="NON-WORKING" Value="NON-WORKING"></asp:ListItem>
                                                                    <asp:ListItem Text="REPAIRABLE" Value="REPAIRABLE"></asp:ListItem>
                                                                    <asp:ListItem Text="NON-REPAIRABLE" Value="NON-REPAIRABLE"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Expected Repairing Cost<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtExpectedRepairingCost" runat="server" CssClass="form-control col-md-4 text-uppercase text-right"
                                                                    MaxLength="7" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtExpectedRepairingCost" runat="server" FilterType="Numbers,Custom"
                                                                    ValidChars="." TargetControlID="txtExpectedRepairingCost">
                                                                </AjaxTools:FilteredTextBoxExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 mt-4 mb-4">
                                                            <h3>Assets Purchase Details</h3>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <div class="form-group">
                                                                <label class="">Supplier Name<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtSupplierName" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfv_txtSupplierName" runat="server" ControlToValidate="txtSupplierName"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Supplier can not be blank"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtSupplierName" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtSupplierName">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                    runat="server" ID="ace_Supplier" BehaviorID="ace_Supplier" CompletionInterval="10"
                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetVendorHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtSupplierName" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Bill No<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtBillNo" runat="server" CssClass="form-control text-uppercase"
                                                                    MaxLength="100" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Bill Date<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtBillDate" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>

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

                                                                <asp:RequiredFieldValidator ID="rfv_txtBillDate" runat="server" ControlToValidate="txtBillDate"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Bill Date can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce1_txtBillDate" runat="server" PopupPosition="BottomRight"
                                                                    Enabled="True" TargetControlID="rfv_txtBillDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Value<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtValue" runat="server" CssClass="form-control text-uppercase text-right"
                                                                    MaxLength="7" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtValue" runat="server" FilterType="Numbers,Custom"
                                                                    ValidChars="." TargetControlID="txtValue">
                                                                </AjaxTools:FilteredTextBoxExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <label class="">Upload Document</label>
                                                            <asp:FileUpload ID="imgUpload" runat="server" CssClass="custom-file" />
                                                        </div>
                                                        <div class="col-md-7">
                                                            <div class="form-group">
                                                                <label class="">Remarks<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" CssClass="form-control text-uppercase"
                                                                    MaxLength="500" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 mt-4 mb-4">
                                                            <h3>Maintenance Details</h3>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Under Warranty<span class="text-danger">*</span></label>
                                                                <asp:DropDownList ID="ddlUnderWarranty" runat="server" CssClass="form-control col-md-4 text-uppercase"
                                                                    AutoComplete="off" AutoPostBack="true" OnSelectedIndexChanged="ddlUnderWarranty_SelectedIndexChanged">
                                                                    <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
                                                                    <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Warranty End Date</label>
                                                                <asp:TextBox ID="txtWarrantyEndDate" runat="server" CssClass="form-control col-md-8 text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:CalendarExtender ID="ce_txtWarrantyEndDate" runat="server" Format="dd/MM/yyyy"
                                                                    TargetControlID="txtWarrantyEndDate">
                                                                </AjaxTools:CalendarExtender>
                                                                <AjaxTools:MaskedEditExtender ID="mee_txtWarrantyEndDate" runat="server" ClearTextOnInvalid="True"
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                    TargetControlID="txtWarrantyEndDate"
                                                                    UserDateFormat="DayMonthYear">
                                                                </AjaxTools:MaskedEditExtender>
                                                                <asp:RegularExpressionValidator ID="rev_txtWarrantyEndDate" runat="server"
                                                                    ControlToValidate="txtWarrantyEndDate"
                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                    ValidationGroup="save">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtWarrantyEndDate" runat="server" Enabled="True"
                                                                    TargetControlID="rev_txtWarrantyEndDate">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                <asp:RequiredFieldValidator ID="rfv_txtWarrantyEndDate" runat="server" ControlToValidate="txtWarrantyEndDate"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Warranty End Date can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce2_txtWarrantyEndDate" runat="server" PopupPosition="BottomRight"
                                                                    Enabled="True" TargetControlID="rfv_txtWarrantyEndDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Under Maintenance<span class="text-danger">*</span></label>
                                                                <asp:DropDownList ID="ddlUnderMaintenance" runat="server" CssClass="form-control col-md-4 text-uppercase"
                                                                    AutoComplete="off" AutoPostBack="true" OnSelectedIndexChanged="ddlUnderMaintenance_SelectedIndexChanged">
                                                                    <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
                                                                    <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Maintenance End Date</label>
                                                                <asp:TextBox ID="txtMaintenanceEndDate" runat="server" CssClass="form-control col-md-8 text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:CalendarExtender ID="ce_txtMaintenanceEndDate" runat="server" Format="dd/MM/yyyy"
                                                                    TargetControlID="txtMaintenanceEndDate">
                                                                </AjaxTools:CalendarExtender>
                                                                <AjaxTools:MaskedEditExtender ID="mee_txtMaintenanceEndDate" runat="server" ClearTextOnInvalid="True"
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                    TargetControlID="txtMaintenanceEndDate"
                                                                    UserDateFormat="DayMonthYear">
                                                                </AjaxTools:MaskedEditExtender>
                                                                <asp:RegularExpressionValidator ID="rev_txtMaintenanceEndDate" runat="server"
                                                                    ControlToValidate="txtMaintenanceEndDate"
                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                    ValidationGroup="save">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtMaintenanceEndDate" runat="server" Enabled="True"
                                                                    TargetControlID="rev_txtMaintenanceEndDate">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                <asp:RequiredFieldValidator ID="rfv_txtMaintenanceEndDate" runat="server" ControlToValidate="txtMaintenanceEndDate"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Maintenance End Date can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce2_txtMaintenanceEndDate" runat="server" PopupPosition="BottomRight"
                                                                    Enabled="True" TargetControlID="rfv_txtMaintenanceEndDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="">Vendor Name<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtVendorName" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfv_txtVendorName" runat="server" ControlToValidate="txtVendorName"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Vendor Name can not be blank"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtVendorName" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtVendorName">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                    runat="server" ID="ace_txtVendorName" BehaviorID="ace_txtVendorName" CompletionInterval="10"
                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetVendorHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtVendorName" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="">Vendor Phone<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtVendorPhone" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtVendorPhone" runat="server" FilterType="Numbers,Custom"
                                                                   ValidChars="," FilterMode="ValidChars" TargetControlID="txtVendorPhone">
                                                                </AjaxTools:FilteredTextBoxExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mt-4 pt-2">
                                                            <div class="form-group" runat="server" visible="false" id="trActive">
                                                                <label class="">Active</label>
                                                                <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" CssClass="" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 text-center">
                                                            <input type="button" id="htmlSave" runat="server" class="btn btn-info" value="Save" onclick="DisableSaveClick();" />
                                                            <asp:Button ID="btnSave" runat="server" CssClass="d-none" OnClick="btnSave_Click" />
                                                            <input type="button" id="htmlUpdate" runat="server" class="btn btn-info" value="Update" onclick="DisableUpdateClick();" />
                                                            <asp:Button ID="btnUpdate" runat="server" CssClass="d-none" OnClick="btnUpdate_Click" />
                                                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="width: 80vw;">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-info  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-4 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Assets Code or Office Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-3 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-danger mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <button id="btnAdd" onserverclick="btnAdd_Click" runat="server" class="btn btn-warning mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-primary mt-0 mb-0"><i class="material-icons">save_alt</i></button>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;width: 80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="AssetsID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("AssetsID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Document Path" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lbtnOpenfile" CommandArgument='<%#Eval("Document Path")%>' OnClick="lbtnOpenfile_Click" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>open_in_browser</i>"></asp:LinkButton>
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
            <asp:PostBackTrigger ControlID="btnSave" />
            <asp:PostBackTrigger ControlID="btnUpdate" />
        </Triggers>
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">

        function DisableSaveClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }

        function DisableUpdateClick() {
            document.getElementById("<%=htmlUpdate.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlUpdate.ClientID %>").value = msg;
            document.getElementById("<%=btnUpdate.ClientID %>").click();
        }

    </script>
</asp:Content>
