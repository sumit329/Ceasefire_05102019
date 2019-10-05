<%@ page title="Office Master" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_OfficeMaster, App_Web_0bwjz4hs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_City");
            if (o != null) {
                o.add_populating(function () {
                    o.set_contextKey($get("<%=txtState.ClientID %>").value);
                }
            );
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
                            <td style="width: 1000px;">
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
                                                        <h4 class="card-title">Office Master</h4>
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
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Office Type<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeType" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control text-uppercase">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtOfficeType" runat="server" ControlToValidate="txtOfficeType"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Type can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtOfficeType" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtOfficeType">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_OfficeType" runat="server" BehaviorID="ace_OfficeType"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeTypeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtOfficeType" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Parent Office
                                                                        </label>
                                                                        <asp:TextBox ID="txtParentOffice" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <%--<span class="required">*</span>
                                                    <asp:RequiredFieldValidator ID="rfvtxtParentOffice" runat="server" ControlToValidate="txtParentOffice"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="Parent name can not be blank"
                                                        ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vcetxtParentOffice" runat="server" Enabled="True"
                                                        TargetControlID="rfvtxtParentOffice">
                                                    </AjaxTools:ValidatorCalloutExtender>--%>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_Office" runat="server" BehaviorID="ace_Office"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtParentOffice" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">GST No</label>
                                                                        <asp:TextBox ID="txtGSTNo" runat="server" AutoComplete="off"
                                                                            MaxLength="15" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Office Code<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeCode" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvtxtOfficeCode" runat="server" ControlToValidate="txtOfficeCode"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Code can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtOfficeCode" runat="server" Enabled="True"
                                                                            TargetControlID="rfvtxtOfficeCode">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Office Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="200" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvtxtOfficeName" runat="server" ControlToValidate="txtOfficeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtOfficeName" runat="server" Enabled="True"
                                                                            TargetControlID="rfvtxtOfficeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Contact Person<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtContactPerson" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="200" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtContactPerson" runat="server"
                                                                            ControlToValidate="txtContactPerson"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Contact person can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtContactPerson" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtContactPerson">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Office Address
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeAddress" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="300" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            State<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtState" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtState" runat="server"
                                                                            ControlToValidate="txtState"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="State can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtState" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtState">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_State" runat="server" BehaviorID="ace_State"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetStateHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtState" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            City<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtCity" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
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
                                                                            MinimumPrefixLength="1" ServiceMethod="GetCityByStateHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtCity" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Pincode<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtPincode" runat="server" AutoComplete="off"
                                                                            MaxLength="6" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtPincode" runat="server"
                                                                            ControlToValidate="txtPincode"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="City can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtPincode" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtPincode">
                                                                        </AjaxTools:ValidatorCalloutExtender>

                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtPincode" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtPincode" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Mobile No
                                                                        </label>
                                                                        <asp:TextBox ID="txtMobileNo" runat="server" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtMobileNo" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtMobileNo" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Phone No
                                                                        </label>
                                                                        <asp:TextBox ID="txtPhoneNo" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>

                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtPhoneNo" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtPhoneNo" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Personal No
                                                                        </label>
                                                                        <asp:TextBox ID="txtPersonalNo" runat="server" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtPersonalNo" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtPersonalNo" ValidChars="">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">
                                                                            Email ID
                                                                        </label>
                                                                        <asp:TextBox ID="txtEmailID" CssClass="form-control" onfocus="this.select()"
                                                                            MaxLength="100" autocomplete="off" runat="server" Enabled="true">
                                                                        </asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ValidationGroup="save"
                                                                            ControlToValidate="txtEmailID" Display="None" ErrorMessage="Enter valid EmailId !"
                                                                            SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtEmailID" PopupPosition="BottomRight"
                                                                            runat="server" TargetControlID="revEmail">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6" runat="server" id="trActive" visible="false">
                                                                    <label class="">
                                                                        Active
                                                                    </label>
                                                                    <asp:CheckBox ID="chkIsActive" Checked="true" runat="server" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12 text-center">
                                                                <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="btn btn-success" Text="Save"
                                                                    ValidationGroup="save" />
                                                                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" CssClass="btn btn-success" Visible="False" Text="Update"
                                                                    CausesValidation="true" ValidationGroup="save" />
                                                                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" CssClass="btn btn-success" Text="Cancel" />

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
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
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Office Code OR Office Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="GO" CssClass="btn btn-success mt-0 mb-0" />
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
                                                                    Width="100%" CssClass="table table-bordered" DataKeyNames="OfficeID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-success d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("OfficeID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="View" CommandArgument='<%#Eval("OfficeID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-success d-none" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("OfficeID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
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

