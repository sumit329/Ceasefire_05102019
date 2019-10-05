<%@ page title="Item Consumption" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_ItemConsumption, App_Web_4xfo1so1" %>

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
                                        <div class="card" id="divItemConsumption" runat="server">
                                            <div class="card-header card-header-info">
                                                <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                <%--<h4 class="card-title">Item Consumption</h4>--%>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Employee Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
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
                                                                <div class="col-md-5">
                                                                    <div class="form-group">
                                                                        <label class="">Item Code & Name <span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtItem" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoPostBack="true" OnTextChanged="txtItem_TextChanged" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtItem" runat="server" ControlToValidate="txtItem"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Item can not be blank !"
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
                                                                        <button id="btnItemRequired" onclick="window.location='../FMS/Request.aspx?ModuleName=Item Master'" runat="server" class="btn btn-warning"><i class="material-icons">contact_support</i></button>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Issue Qty</label>
                                                                        <asp:TextBox ID="txtIssueQty" onkeyup="SetBalanceQuantity();" runat="server"
                                                                            MaxLength="4" AutoComplete="off" CssClass="form-control col-md-4 text-right"></asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtIssueQty" runat="server" FilterType="Numbers"
                                                                            TargetControlID="txtIssueQty">
                                                                        </AjaxTools:FilteredTextBoxExtender>

                                                                        <asp:RequiredFieldValidator ID="rfv_txtIssueQty" runat="server" ControlToValidate="txtIssueQty"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Quantity can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtIssueQty" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtIssueQty">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="">Stock Qty</label>
                                                                        <asp:TextBox ID="txtStockQty" runat="server" AutoComplete="off" Text="0" CssClass="form-control text-right disabled" Enabled="false"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="">Balance Qty</label>
                                                                        <asp:TextBox ID="txtBalanceQty" runat="server" AutoComplete="off" Text="0" CssClass="form-control text-right disabled" Enabled="false"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Remarks</label>
                                                                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control text-uppercase" TextMode="MultiLine"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 text-center">
                                                                    <input type="button" id="htmlSave" runat="server" class="btn btn-info" value="Save" onclick="DisableClick();" />
                                                                    <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="d-none" />
                                                                    <asp:Button ID="btnReset" OnClick="btnReset_Click" runat="server" CssClass="btn btn-default" Text="Reset"></asp:Button>
                                                                    <asp:Button ID="btnClose" OnClick="btnClose_Click" runat="server" CssClass="btn btn-default" Text="Close"></asp:Button>
                                                                </div>
                                                            </div>
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
                                                    <div class="col-md-6">
                                                        <h4 class="card-title">Today Item Consumption</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <button id="btnAdd" onserverclick="btnAdd_Click" runat="server" class="btn btn-warning mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;width: 80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="SL#" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" Width="40px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Employee Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Employee Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Item Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Item Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Issue Date">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Issue Date")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Quantity">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Quantity")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Remarks">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Remarks")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
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
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">

        function DisableClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }
        function SetBalanceQuantity() {
            var StockQty = document.getElementById('<%=txtStockQty.ClientID %>').value;
            var IssueQty = document.getElementById('<%=txtIssueQty.ClientID %>').value;
            if (!isNaN(StockQty) && IssueQty > 0) {
                if (!isNaN(IssueQty)) {
                    document.getElementById('<%=txtBalanceQty.ClientID %>').value = parseFloat(StockQty) - parseFloat(IssueQty);
                }
                else {
                    document.getElementById('<%=txtBalanceQty.ClientID %>').value = '0';
                }
            }
            else {
                document.getElementById('<%=txtBalanceQty.ClientID %>').value = '0';
            }
        }
    </script>
</asp:Content>
