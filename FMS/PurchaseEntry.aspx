<%@ page title="Purchase Entry" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_PurchaseEntry, App_Web_4xfo1so1" %>

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
                                                <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                <%--<h4 class="card-title">Purchase Entry</h4>--%>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">PI Date</label>
                                                                <asp:TextBox ID="txtPIDate" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">PI Number</label>
                                                                <asp:TextBox ID="txtPINumber" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <div class="form-group">
                                                                <label class="">
                                                                   PI Supplier Name 
                                                                    <%--<span class="text-danger">*</span>--%></label>
                                                                <asp:TextBox ID="txtSupplierName" runat="server" AutoComplete="off" CssClass="form-control text-uppercase disabled" Enabled="false"></asp:TextBox>

                                                                <%--<asp:RequiredFieldValidator ID="rfv_txtSupplierName" runat="server" ControlToValidate="txtSupplierName"
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
                                                                    MinimumPrefixLength="1" ServiceMethod="GetSupplierHelp_WithoutNotFound" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtSupplierName" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <div class="form-group">
                                                                <label class="">
                                                                   Purchase Supplier Name 
                                                                    <span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtPurchaseSupplierName" runat="server" onfocus="this.select();" AutoComplete="off" CssClass="form-control text-uppercase"></asp:TextBox>

                                                                <asp:RequiredFieldValidator ID="rfv_txtPurchaseSupplierName" runat="server" ControlToValidate="txtPurchaseSupplierName"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Supplier can not be blank"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtPurchaseSupplierName" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtPurchaseSupplierName">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                    runat="server" ID="ace_txtPurchaseSupplierName" BehaviorID="ace_txtPurchaseSupplierName" CompletionInterval="10"
                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                    MinimumPrefixLength="1" ServiceMethod="GetVendorHelp" ServicePath="~/WService.asmx"
                                                                    TargetControlID="txtPurchaseSupplierName" UseContextKey="false">
                                                                </AjaxTools:AutoCompleteExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 mt-3 pt-2">
                                                            <div class="form-group">
                                                                <button id="Button1" onclick="window.open('../FMS/Request.aspx?ModuleName=Vendor Master','_blank')" runat="server" class="btn btn-warning"><i class="material-icons">contact_support</i></button>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Purchase Date</label>
                                                                <asp:TextBox ID="txtPurchaseDate" runat="server" AutoComplete="off" CssClass="form-control"></asp:TextBox>
                                                                <AjaxTools:CalendarExtender ID="ce_txtPurchaseDate" runat="server" Format="dd/MM/yyyy"
                                                                    TargetControlID="txtPurchaseDate">
                                                                </AjaxTools:CalendarExtender>
                                                                <AjaxTools:MaskedEditExtender ID="me_txtPurchaseDate" runat="server" ClearTextOnInvalid="True"
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                    TargetControlID="txtPurchaseDate"
                                                                    UserDateFormat="DayMonthYear">
                                                                </AjaxTools:MaskedEditExtender>
                                                                <asp:RegularExpressionValidator ID="rev_txtPurchaseDate" runat="server"
                                                                    ControlToValidate="txtPurchaseDate"
                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                    ValidationGroup="save">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtPurchaseDate" runat="server" Enabled="True"
                                                                    TargetControlID="rev_txtPurchaseDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                <AjaxTools:TextBoxWatermarkExtender ID="we_txtPurchaseDate" runat="server"
                                                                    TargetControlID="txtPurchaseDate" WatermarkText="dd/mm/yyyy">
                                                                </AjaxTools:TextBoxWatermarkExtender>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Style="height: auto;width:80vw;">
                                                                <asp:GridView ID="grdPO" runat="server" AllowPaging="false" ShowFooter="false"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    DataKeyNames="PISummaryID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="SL#" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" Width="40px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Item Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Item Name")%>
                                                                                <asp:Label ID="lblPISummaryID" runat="server" Visible="false" Text='<%#Eval("PISummaryID")%>'></asp:Label>
                                                                                <asp:Label ID="lblPIDetailID" runat="server" Visible="false" Text='<%#Eval("PIDetailID")%>'></asp:Label>
                                                                                <asp:Label ID="lblSupplierID" runat="server" Visible="false" Text='<%#Eval("SupplierID")%>'></asp:Label>
                                                                                <asp:Label ID="lblItemID" runat="server" Visible="false" Text='<%#Eval("ItemID")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Brand Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Brand Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Stock Qty">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Stock Qty")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="PI Qty">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblPIQty" runat="server"  Text='<%#Eval("PI Qty")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="PI Rate">
                                                                            <ItemTemplate>
                                                                                <%#Eval("PI Rate")%>
                                                                                <asp:Label ID="lblPIRate" runat="server" Visible="false" Text='<%#Eval("PI Rate")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Buy Qty">
                                                                            <ItemTemplate>
                                                                                <asp:TextBox ID="txtBuyQty" runat="server" Text='<%#Eval("Buy Qty")%>'
                                                                                   onchange="QtyChange()" MaxLength="5" AutoComplete="off" onfocus="this.select();"
                                                                                    CssClass="col-md-12 text-right">
                                                                                </asp:TextBox>
                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtBuyQty" runat="server" FilterMode="ValidChars"
                                                                                    FilterType="Numbers" TargetControlID="txtBuyQty">
                                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtBuyQty" runat="server" ControlToValidate="txtBuyQty"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Quantity can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtBuyQty" runat="server"
                                                                                    PopupPosition="TopRight" Enabled="True" TargetControlID="rfv_txtBuyQty">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="true" Width="60px" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" Width="60px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Buy Rate">
                                                                            <ItemTemplate>
                                                                                <asp:TextBox ID="txtBuyRate" runat="server" Text='<%#Eval("Buy Rate")%>'
                                                                                 onchange="RateChange()"   MaxLength="7" AutoComplete="off" onfocus="this.select();" CssClass="col-md-12 text-right">
                                                                                </asp:TextBox>
                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtBuyRate" runat="server" FilterMode="ValidChars"
                                                                                    FilterType="Numbers,Custom" ValidChars="." TargetControlID="txtBuyRate">
                                                                                </AjaxTools:FilteredTextBoxExtender>

                                                                                <asp:RequiredFieldValidator ID="rfv_txtBuyRate" runat="server" ControlToValidate="txtBuyRate"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Rate can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtBuyRate" runat="server"
                                                                                    PopupPosition="TopRight" Enabled="True" TargetControlID="rfv_txtBuyRate">
                                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="true" Width="80px" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" Width="80px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Total Amt">
                                                                            <ItemTemplate>
                                                                                <asp:TextBox ID="txtTotalAmt" runat="server" Text='<%#Eval("Total Amt")%>'
                                                                                    Enabled="false" CssClass="col-md-12 text-right">
                                                                                </asp:TextBox>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="true" Width="100px" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Width="100px" Wrap="false" />
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
                                                    <div class="row pt-0">
                                                        <div class="col-md-10 text-right pt-0">
                                                            <h4>Total:</h4>
                                                        </div>
                                                        <div class="col-md-2 text-right pt-0">
                                                            <asp:TextBox ID="txtTotalAmt" runat="server" Text=""
                                                                Enabled="false" CssClass="col-md-10 text-right">
                                                            </asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label class="">Bill No</label>
                                                                <asp:TextBox ID="txtBillNo" AutoComplete="off" MaxLength="20" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfv_txtBillNo" runat="server" ControlToValidate="txtBillNo"
                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Bill No can not be blank !"
                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtBillNo" runat="server"
                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtBillNo">
                                                                </AjaxTools:ValidatorCalloutExtender>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Bill Date</label>
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
                                                        <div class="col-md-7">
                                                            <label class="">Bill Scan Copy Upload <span class="text-danger">*</span></label>
                                                            <asp:FileUpload ID="fuBill" runat="server" CssClass="custom-file" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12 text-center">
                                                            <input type="button" id="htmlSave" runat="server" class="btn btn-info" value="Save" onclick="DisableClick();" />
                                                            <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="d-none" />
                                                            <asp:Button ID="btnReset" OnClick="btnReset_Click" runat="server" CssClass="btn btn-default" Text="Reset"></asp:Button>
                                                            <asp:Button ID="btnClose" OnClick="btnClose_Click" runat="server" CssClass="btn btn-default" Text="Close"></asp:Button>
                                                            <asp:Button ID="btnRate" OnClick="btnRate_Click" runat="server" CssClass="d-none" />
                                                            <asp:Button ID="btnQty" OnClick="btnQty_Click" runat="server" CssClass="d-none" />
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
                                                    <div class="col-md-6 pl-4">
                                                        <h4 class="card-title">Approved PI for Purchase Entry</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <%-- <button id="btnAdd" onserverclick="btnAdd_Click" runat="server" class="btn btn-warning"><i class="material-icons">add_circle_outline</i></button>--%>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="pnlDetail" runat="server" ScrollBars="Auto" Style="max-height: 70vh;width:80vw;">
                                                                <asp:GridView ID="grdPI" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="PISummaryID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Update" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="+" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("PISummaryID") + "|"+Eval("SupplierID") %>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Width="60px" Wrap="false" CssClass="col-md-2" />
                                                                            <ItemStyle Wrap="false" Width="60px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" Width="40px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Office Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Office Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="PI Number">
                                                                            <ItemTemplate>
                                                                                <%#Eval("PI Number")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="PI Date">
                                                                            <ItemTemplate>
                                                                                <%#Eval("PI Date")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Supplier Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Supplier Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Total Item">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Total Item")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="false" CssClass="header" />
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
            <asp:PostBackTrigger ControlID="btnSave" />
            <asp:PostBackTrigger ControlID="btnReset" />
            <asp:PostBackTrigger ControlID="btnClose" />
        </Triggers>
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">
        function DisableClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }
        function RateChange() {
            document.getElementById("<%=btnRate.ClientID %>").click();
        }
        function QtyChange() {
            document.getElementById("<%=btnQty.ClientID %>").click();
        }
    </script>
</asp:Content>
