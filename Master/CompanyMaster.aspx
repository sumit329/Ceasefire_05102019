<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="CompanyMaster, App_Web_nbyko0ky" %>

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
                            <td style="width: 1200px;">
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
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="card-title">Company Master</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right"><small>Fields with <span class="text-danger">*</span> mark are mandatory.</small></div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <div class="form-group">
                                                                <label>
                                                                    Company Name<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtCompanyName" runat="server" Style="text-transform: uppercase"
                                                                    AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompanyName"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Company Name can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>
                                                                    GSTIN<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtGSTNo" runat="server" Style="text-transform: uppercase"
                                                                    MaxLength="30" AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfv_txtGSTNo" runat="server" ControlToValidate="txtGSTNo"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="GST can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtGSTNo" runat="server" PopupPosition="BottomRight"
                                                                    Enabled="True" TargetControlID="rfv_txtGSTNo">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <div class="form-group">
                                                                <label>
                                                                    Registration No<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtRegistrationNo" runat="server" Style="text-transform: uppercase"
                                                                    MaxLength="50" AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label>
                                                                    Registration Date<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtRegistrationDate" runat="server"
                                                                    AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                                <AjaxTools:CalendarExtender ID="vce_Date" runat="server" Format="dd/MM/yyyy"
                                                                    TargetControlID="txtRegistrationDate">
                                                                </AjaxTools:CalendarExtender>
                                                                <AjaxTools:MaskedEditExtender ID="MskDate" runat="server" ClearTextOnInvalid="True"
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                    TargetControlID="txtRegistrationDate"
                                                                    UserDateFormat="DayMonthYear">
                                                                </AjaxTools:MaskedEditExtender>
                                                                <asp:RegularExpressionValidator ID="rev_txtRegistrationDate" runat="server" ControlToValidate="txtRegistrationDate"
                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                    ValidationGroup="save">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtRegistrationDate" runat="server" Enabled="True"
                                                                    TargetControlID="rev_txtRegistrationDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <div class="form-group">
                                                                <label>
                                                                    Service Tax Category<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtServiceTaxCategory" runat="server" Style="text-transform: uppercase"
                                                                    MaxLength="50" AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label>
                                                                    PAN No.<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtPanNo" runat="server"
                                                                    MaxLength="10" AutoComplete="off" onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                </asp:TextBox>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPanNo"
                                                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid PAN Card" ValidationExpression="[A-Za-z]{5}\d{4}[A-Za-z]{1}"></asp:RegularExpressionValidator>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>
                                                                    CIN No.<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtCINNo" runat="server" Style="text-transform: uppercase"
                                                                    MaxLength="25" AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <label>
                                                                Company Logo<span class="text-danger">*</span>
                                                            </label>
                                                            <asp:FileUpload ID="imgUpload" runat="server" CssClass="custom-file" Style="display: inline;" />
                                                            <asp:Image ID="imgCompany" runat="server" />
                                                        </div>
                                                        <div class="col-md-12">
                                                            <h4 class="no-margins">Contact Detail</h4>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>
                                                                    Name
                                                                </label>
                                                                <asp:TextBox ID="txtName" runat="server" AutoComplete="off"
                                                                    onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>
                                                                    Address
                                                                </label>
                                                                <asp:TextBox ID="txtAddress" runat="server" Style="text-transform: uppercase;" TextMode="SingleLine"
                                                                    AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label>
                                                                    Pincode<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtPincode" runat="server" onfocus="this.select()" CssClass="form-control"
                                                                    MaxLength="6">
                                                                </asp:TextBox>
                                                                <asp:RegularExpressionValidator ID="rev_txtPincode" runat="server" ControlToValidate="txtPincode"
                                                                    Enabled="true" ErrorMessage="Pin code should be numeric" SetFocusOnError="true"
                                                                    ValidationGroup="save" ValidationExpression="^[+]?\d*$" Display="None">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:FilteredTextBoxExtender ID="ftxte_txtPincode" runat="server" FilterType="Custom, numbers"
                                                                    ValidChars="- . , +" TargetControlID="txtPincode">
                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated" ID="ace_PinCode" runat="server" BehaviorID="ace_PinCode"
                                                                    CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetPincodeHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtPincode" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPincode"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Pin Code can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="RequiredFieldValidator3">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>
                                                                    City<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtCity" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                    onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated" ID="AutoCompleteExtender1" runat="server" BehaviorID="AutoCompleteExtender1"
                                                                    CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetCityHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtCity" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="City can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="RequiredFieldValidator5">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>
                                                                    State<span class="text-danger">*</span>
                                                                </label>
                                                                <asp:TextBox ID="txtState" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                    onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated" ID="AutoCompleteExtender2" runat="server" BehaviorID="AutoCompleteExtender2"
                                                                    CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetStateHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtState" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtState"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="State can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="RequiredFieldValidator6">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label>
                                                                    Mobile
                                                                </label>
                                                                <asp:TextBox ID="txtMobile" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                  MaxLength="10"  onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterMode="ValidChars"
                                                                    FilterType="Custom, Numbers" TargetControlID="txtMobile" ValidChars="- ,">
                                                                </AjaxTools:FilteredTextBoxExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label>
                                                                    Phone
                                                                </label>
                                                                <asp:TextBox ID="txtPhone" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                   MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="ftetxtPhone" runat="server" FilterMode="ValidChars"
                                                                    FilterType="Custom, Numbers" TargetControlID="txtPhone" ValidChars="- ,">
                                                                </AjaxTools:FilteredTextBoxExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>
                                                                    Email
                                                                </label>
                                                                <asp:TextBox ID="txtEmailID" CssClass="form-control" onfocus="this.select()"
                                                                    autocomplete="off" runat="server" Enabled="true">
                                                                </asp:TextBox>

                                                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ValidationGroup="save"
                                                                    ControlToValidate="txtEmailID" Display="None" ErrorMessage="Enter valid EmailId !"
                                                                    SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

                                                                <AjaxTools:ValidatorCalloutExtender ID="vcetxtEmailID" PopupPosition="BottomRight"
                                                                    runat="server" TargetControlID="revEmail">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>
                                                                    Website
                                                                </label>
                                                                <asp:TextBox ID="txtWebsite" runat="server" Style="text-transform: uppercase" MaxLength="200"
                                                                    AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 text-center">
                                                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save"
                                                                ValidationGroup="save" OnClick="btnSave_Click" />
                                                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success" Visible="False" Text="Update"
                                                                CausesValidation="false" ValidationGroup="save" OnClick="btnUpdate_Click" />
                                                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-success" Text="Cancel"
                                                                OnClick="btnCancel_Click" />

                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="width:inherit">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-12 text-right">
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-info mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="CompanyID" AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-success d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("CompanyID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success d-none" Text="Edit" CommandName="View" CommandArgument='<%#Eval("CompanyID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-success" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("CompanyID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
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
            <asp:PostBackTrigger ControlID="btnSave" />
            <asp:PostBackTrigger ControlID="btnUpdate" />
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>

