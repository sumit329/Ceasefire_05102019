<%@ page title="Office Rent Management" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_OfficeRentManagement, App_Web_4xfo1so1" %>

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
                                            <div class="card-header card-header-info">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                        <%--<h4 class="card-title">Office Rent Management</h4>--%>
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
                                                                    AutoComplete="off" onfocus="this.select();" AutoPostBack="true" OnTextChanged="txtBranchName_TextChanged"></asp:TextBox>
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
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Branch Address</label>
                                                                <asp:Label ID="lblBranchAddress" runat="server" CssClass="form-control"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Branch Type</label>
                                                                <asp:Label ID="lblBranchType" runat="server" CssClass="form-control"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>City</label>
                                                                <asp:Label ID="lblCity" runat="server" CssClass="form-control"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Parent Office</label>
                                                                <asp:Label ID="lblParentOffice" runat="server" CssClass="form-control"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>State - Pincode</label>
                                                                <asp:Label ID="lblState" runat="server" CssClass="form-control"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-8 mt-3">
                                                            <div class="row border-right">
                                                                <div class="col-md-9">
                                                                    <div class="form-group">
                                                                        <label class="">Landlord Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtLandlordName" runat="server" CssClass="form-control text-uppercase"
                                                                            MaxLength="100" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtLandlordName" runat="server" ControlToValidate="txtLandlordName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Landlord Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtLandlordName" runat="server" PopupPosition="BottomRight"
                                                                            Enabled="True" TargetControlID="rfv_txtLandlordName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_txtLandlordName" BehaviorID="ace_txtLandlordName" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetVendorHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtLandlordName" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">Office Area (sq. ft)<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtOfficeArea" runat="server" CssClass="form-control text-uppercase text-right"
                                                                            MaxLength="7" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtOfficeArea" runat="server" FilterType="Numbers,Custom"
                                                                            ValidChars="."
                                                                            TargetControlID="txtOfficeArea">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtOfficeArea" runat="server" ControlToValidate="txtOfficeArea"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Area can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtOfficeArea" runat="server" PopupPosition="BottomRight"
                                                                            Enabled="True" TargetControlID="rfv_txtOfficeArea">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="row">
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label class="">Contract Start Date<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtContractStartDate" runat="server" CssClass="form-control col-md-9 text-uppercase"
                                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>

                                                                                <AjaxTools:CalendarExtender ID="ce_txtContractStartDate" runat="server" Format="dd/MM/yyyy"
                                                                                    TargetControlID="txtContractStartDate">
                                                                                </AjaxTools:CalendarExtender>
                                                                                <AjaxTools:MaskedEditExtender ID="mee_txtContractStartDate" runat="server" ClearTextOnInvalid="True"
                                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                                    TargetControlID="txtContractStartDate"
                                                                                    UserDateFormat="DayMonthYear">
                                                                                </AjaxTools:MaskedEditExtender>
                                                                                <asp:RegularExpressionValidator ID="rev_txtContractStartDate" runat="server"
                                                                                    ControlToValidate="txtContractStartDate"
                                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                    ValidationGroup="save">
                                                                                </asp:RegularExpressionValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtContractStartDate" runat="server" Enabled="True"
                                                                                    TargetControlID="rev_txtContractStartDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                                <asp:RequiredFieldValidator ID="rfv_txtContractStartDate" runat="server" ControlToValidate="txtContractStartDate"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Contract Start Date can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce2_txtContractStartDate" runat="server" PopupPosition="BottomRight"
                                                                                    Enabled="True" TargetControlID="rfv_txtContractStartDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <div class="form-group">
                                                                                <label class="">Renewal Date<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtRenewalDate" runat="server" CssClass="form-control text-uppercase"
                                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                <AjaxTools:CalendarExtender ID="ce_txtRenewalDate" runat="server" Format="dd/MM/yyyy"
                                                                                    TargetControlID="txtRenewalDate">
                                                                                </AjaxTools:CalendarExtender>
                                                                                <AjaxTools:MaskedEditExtender ID="mee_txtRenewalDate" runat="server" ClearTextOnInvalid="True"
                                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                                    TargetControlID="txtRenewalDate"
                                                                                    UserDateFormat="DayMonthYear">
                                                                                </AjaxTools:MaskedEditExtender>
                                                                                <asp:RegularExpressionValidator ID="rev_txtRenewalDate" runat="server"
                                                                                    ControlToValidate="txtRenewalDate"
                                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                    ValidationGroup="save">
                                                                                </asp:RegularExpressionValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtRenewalDate" runat="server" Enabled="True"
                                                                                    TargetControlID="rev_txtRenewalDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                                <asp:RequiredFieldValidator ID="rfv_txtRenewalDate" runat="server" ControlToValidate="txtRenewalDate"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Renewal Date can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce2_txtRenewalDate" runat="server" PopupPosition="BottomRight"
                                                                                    Enabled="True" TargetControlID="rfv_txtRenewalDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label class="">Rent Amount<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtRentAmount" runat="server" CssClass="form-control col-md-9 text-uppercase text-right"
                                                                                    MaxLength="7" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtRentAmount" runat="server" FilterType="Numbers,Custom"
                                                                                    ValidChars="." TargetControlID="txtRentAmount">
                                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtRentAmount" runat="server" ControlToValidate="txtRentAmount"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Rent Amount can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtRentAmount" runat="server" PopupPosition="BottomRight"
                                                                                    Enabled="True" TargetControlID="rfv_txtRentAmount">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <div class="form-group">
                                                                                <label class="">Security Deposit<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtSecurityDeposit" runat="server" CssClass="form-control text-uppercase text-right"
                                                                                    MaxLength="7" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtSecurityDeposit" runat="server" FilterType="Numbers,Custom"
                                                                                    ValidChars="." TargetControlID="txtSecurityDeposit">
                                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtSecurityDeposit" runat="server" ControlToValidate="txtSecurityDeposit"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Security Deposit can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtSecurityDeposit" runat="server" PopupPosition="BottomRight"
                                                                                    Enabled="True" TargetControlID="rfv_txtSecurityDeposit">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Remarks</label>
                                                                        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" CssClass="form-control"
                                                                            MaxLength="500" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mt-3">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Increase Term</label>
                                                                        <asp:TextBox ID="txtIncreaseTerm" runat="server" CssClass="form-control text-right"
                                                                            MaxLength="5" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtIncreaseTerm" runat="server" FilterType="Numbers,Custom"
                                                                            ValidChars="."
                                                                            TargetControlID="txtIncreaseTerm">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtIncreaseTerm" runat="server" ControlToValidate="txtIncreaseTerm"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Increase Term can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtIncreaseTerm" runat="server" PopupPosition="BottomRight"
                                                                            Enabled="True" TargetControlID="rfv_txtIncreaseTerm">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>Increase Persentage (%)<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtIncreasePersentage" runat="server" CssClass="form-control text-right"
                                                                            MaxLength="5" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtIncreasePersentage" runat="server" FilterType="Numbers,Custom"
                                                                            ValidChars="."
                                                                            TargetControlID="txtIncreasePersentage">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtIncreasePersentage" runat="server" ControlToValidate="txtIncreasePersentage"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Increase Persentage (%) can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtIncreasePersentage" runat="server" PopupPosition="BottomRight"
                                                                            Enabled="True" TargetControlID="rfv_txtIncreasePersentage">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <label class="">Upload Document</label>
                                                                    <asp:FileUpload ID="imgUpload" runat="server" CssClass="custom-file" />
                                                                </div>
                                                                <div class="col-md-12 mt-3 pt-2">
                                                                    <div class="form-group" runat="server" visible="false" id="trActive">
                                                                        <label class="">Active</label>
                                                                        <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" CssClass="" />
                                                                    </div>
                                                                </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-info  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Office or Landlord Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
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
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto; width: 80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="RentID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <%--OnRowCreated="grdMasterView_RowCreated"--%>
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("RentID")%>' />
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
