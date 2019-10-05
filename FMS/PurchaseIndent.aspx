<%@ page title="Purchase Indent" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_PurchaseIndent, App_Web_4xfo1so1" %>

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
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                        <%--<h4 class="card-title">Purchase Indent</h4>--%>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row d-none">
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">PI Number</label>
                                                                <asp:TextBox ID="txtPINumber" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">PI Date</label>
                                                                <asp:TextBox ID="txtPIDate" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label class="">Item Code & Name <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtItem" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoPostBack="true" OnTextChanged="txtItem_TextChanged" AutoComplete="off" onfocus="this.select();"></asp:TextBox>

                                                                <asp:RequiredFieldValidator ID="rfv_txtItem" runat="server" ControlToValidate="txtItem"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Item can not be blank"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtItem" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtItem">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                    runat="server" ID="ace_Item" BehaviorID="ace_Item" CompletionInterval="10"
                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetItemHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtItem" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 mt-3 pt-2">
                                                            <div class="form-group">
                                                                <button id="btnItemRequired" onclick="window.open('../FMS/Request.aspx?ModuleName=Item Master','_blank')" runat="server" class="btn btn-warning"><i class="material-icons">contact_support</i></button>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Quantity <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control col-md-6 text-right" AutoComplete="off" MaxLength="5"></asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtQuantity" runat="server" FilterType="Numbers"
                                                                    TargetControlID="txtQuantity">
                                                                </AjaxTools:FilteredTextBoxExtender>

                                                                <asp:RequiredFieldValidator ID="rfv_txtQuantity" runat="server" ControlToValidate="txtQuantity"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Quantity can not be blank"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtQuantity" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtQuantity">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Balance Quantity</label>
                                                                <asp:TextBox ID="txtBalanceQuantity" runat="server" CssClass="form-control col-md-6 text-right disabled" Enabled="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Expected Delivery Date <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtExpectedDeliveryDate" runat="server" AutoComplete="off" CssClass="form-control col-md-6"></asp:TextBox>
                                                                <AjaxTools:CalendarExtender ID="ce_txtExpectedDeliveryDate" runat="server" Format="dd/MM/yyyy"
                                                                    TargetControlID="txtExpectedDeliveryDate">
                                                                </AjaxTools:CalendarExtender>
                                                                <AjaxTools:MaskedEditExtender ID="Msk_txtExpectedDeliveryDate" runat="server" ClearTextOnInvalid="True"
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                    TargetControlID="txtExpectedDeliveryDate"
                                                                    UserDateFormat="DayMonthYear">
                                                                </AjaxTools:MaskedEditExtender>
                                                                <asp:RegularExpressionValidator ID="rev_txtExpectedDeliveryDate" runat="server"
                                                                    ControlToValidate="txtExpectedDeliveryDate"
                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                    ValidationGroup="save">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtExpectedDeliveryDate" runat="server" Enabled="True"
                                                                    TargetControlID="rev_txtExpectedDeliveryDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row bg-info mt-3">
                                                        <div class="col-md-3 pr-0">
                                                            <div class="form-group">
                                                                <label class=" text-white">Supplier Name <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtSupplierName" runat="server" AutoComplete="off" CssClass="form-control text-uppercase"></asp:TextBox>

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
                                                        <div class="col-md-1 mt-3 pt-2">
                                                            <div class="form-group">
                                                                <button id="Button1" onclick="window.open('../FMS/Request.aspx?ModuleName=Vendor Master','_blank')" runat="server" class="btn btn-warning"><i class="material-icons">contact_support</i></button>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 pl-0 pr-0">
                                                            <div class="form-group">
                                                                <label class=" text-white">Brand Name <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtBrandName" runat="server" AutoComplete="off" CssClass="form-control text-uppercase"></asp:TextBox>

                                                                <asp:RequiredFieldValidator ID="rfv_txtBrandName" runat="server" ControlToValidate="txtBrandName"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Brand name can not be blank"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtBrandName" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtBrandName">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 pr-0">
                                                            <div class="form-group">
                                                                <label class=" text-white">Rate <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtRate" runat="server" MaxLength="5" AutoComplete="off" CssClass="form-control text-right"></asp:TextBox>
                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtRate" runat="server" FilterType="Numbers,Custom"
                                                                    ValidChars="." TargetControlID="txtRate">
                                                                </AjaxTools:FilteredTextBoxExtender>

                                                                <asp:RequiredFieldValidator ID="rfv_txtRate" runat="server" ControlToValidate="txtRate"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Rate can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtRate" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtRate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 pr-0">
                                                            <div class="form-group">
                                                                <label class=" text-white">Remarks <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtRemarks" AutoComplete="off" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 mt-3 pt-2 pl-0">
                                                            <input type="button" id="htmlAdd" runat="server" class="btn btn-danger" value="Add" onclick="DisableAddClick();" />
                                                            <asp:Button ID="btnAdd" runat="server" CssClass="d-none" OnClick="btnAdd_Click" />
                                                        </div>
                                                    </div>
                                                    <div class="row" style="padding-left: 1px; padding-right: 1px;">
                                                        <div class="col-md-12" style="padding-left: 1px; padding-right: 1px;">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;width:80vw;">
                                                                <asp:GridView ID="grdTransaction" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="PIDetailID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnRowCommand="grdTransaction_RowCommand"
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
                                                                                    CommandArgument='<%#Eval("PIDetailID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                        runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                        TargetControlID="btnDelete">
                                                                                    </AjaxTools:ConfirmButtonExtender>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Width="100px" Wrap="false" CssClass="col-md-2" />
                                                                            <ItemStyle Wrap="false" Width="100px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Supplier Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Supplier Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Brand Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Brand Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Rate">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Rate")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Item Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Item Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Bal. Qty">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Balance Qty")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Qty">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Qty")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Amount">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Amount")%>
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
                                                    <div class="row">
                                                        <div class="col-md-12 text-center">
                                                            <input type="button" id="htmlSaveContinue" runat="server" class="btn btn-info" value="Save & Continue" onclick="DisableSaveContinue();" />
                                                            <asp:Button ID="btnSaveContinue" runat="server" CssClass="d-none" OnClick="btnSaveContinue_Click" />

                                                            <input type="button" id="htmlGeneratePI" runat="server" class="btn btn-info" value="Generate PI"
                                                                onclick="DisableGeneratePI();" />
                                                            <asp:Button ID="btnGeneratePI" runat="server" CssClass="d-none" OnClick="btnGeneratePI_Click" />

                                                            <%--<button id="btnPrintPI" runat="server" class="btn btn-default">Print PI</button>--%>
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
            <%--<div class="fixed-plugin">
                <asp:LinkButton ID="lbtnNotFound" runat="server" CssClass="" Text="<i class='fa fa-ban fa-2x'></i>" data-toggle="tooltip" title="Not Found!" OnClientClick="window.location='../FMS/Request.aspx'"></asp:LinkButton>
            </div>--%>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">

        function DisableAddClick() {
            document.getElementById("<%=htmlAdd.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlAdd.ClientID %>").value = msg;
            document.getElementById("<%=btnAdd.ClientID %>").click();
        }
        function DisableSaveContinue() {
            document.getElementById("<%=htmlSaveContinue.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSaveContinue.ClientID %>").value = msg;
            document.getElementById("<%=btnSaveContinue.ClientID %>").click();
        }
        function DisableGeneratePI() {
            document.getElementById("<%=htmlGeneratePI.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlGeneratePI.ClientID %>").value = msg;
            document.getElementById("<%=btnGeneratePI.ClientID %>").click();
        }
        function Redirect()
        {
            window.location='../FMS/Request.aspx';
        }
    </script>
</asp:Content>

