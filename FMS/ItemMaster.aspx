<%@ page title="Item Master" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_ItemMaster, App_Web_4xfo1so1" %>

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
                                                        <%--<h4 class="card-title">Item Master</h4>--%>
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
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Item Code<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtItemCode" runat="server" CssClass="form-control col-md-4 text-uppercase"
                                                                            MaxLength="50" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Item Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control text-uppercase"
                                                                            MaxLength="200" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-5">
                                                                    <div class="form-group">
                                                                        <label class="">Item Group<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtItemGroup" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_ItemGroup" BehaviorID="ace_ItemGroup" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetItemGroup_WithoutNotFound_Help" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtItemGroup" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-1 text-center mt-4 pt-1 pl-0">
                                                                    <button id="btnAddItemGroup" onserverclick="btnAddItemGroup_Click" runat="server" class="btn btn-warning mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Item Type<span class="text-danger">*</span></label>
                                                                        <asp:DropDownList ID="ddlItemType" runat="server" CssClass="form-control col-md-6 text-uppercase">
                                                                            <asp:ListItem Value="ASSETS" Text="ASSETS"></asp:ListItem>
                                                                            <asp:ListItem Value="CONSUMABLE" Text="CONSUMABLE"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Item Max Buy Rate<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtItemMaxPurchaseRate" runat="server" CssClass="form-control text-right col-md-2"
                                                                            MaxLength="5" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtItemMaxPurchaseRate" runat="server" FilterType="Numbers,Custom"
                                                                            ValidChars="." TargetControlID="txtItemMaxPurchaseRate">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Minimum Quantity<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtMinimumQty" runat="server" CssClass="form-control col-md-2 text-right"
                                                                            MaxLength="3" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtMinimumQty" runat="server" FilterType="Numbers"
                                                                            ValidChars="." TargetControlID="txtMinimumQty">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Allow Purchase Locally</label>
                                                                    <asp:CheckBox ID="chkIsAllowPurchaseLocally" runat="server"
                                                                        Text="" />
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label>GST Applicable</label>
                                                                    <asp:CheckBox ID="chkIsGSTApplicable" runat="server"
                                                                        Text="" AutoPostBack="true" OnCheckedChanged="chkIsGSTApplicable_CheckedChanged" />
                                                                </div>
                                                            </div>
                                                            <div class="row" id="rowGST" runat="server">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">GST %<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtGST" runat="server" CssClass="form-control col-md-2"
                                                                            MaxLength="5" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtGST" runat="server" FilterType="Numbers,Custom"
                                                                            ValidChars="." TargetControlID="txtGST">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">HSN Code</label>
                                                                        <asp:TextBox ID="txtHSNCode" runat="server" CssClass="form-control"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label class="">Item Image</label>
                                                                    <asp:FileUpload ID="imgUpload" runat="server" CssClass="custom-file" />
                                                                </div>
                                                                <div class="col-md-6">
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
                                                        <label class="text-white">Search by Item Code or Name</label>
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
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;width:80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="ItemID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting">
                                                                    <%--OnRowCreated="grdMasterView_RowCreated"--%>
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("ItemID")%>' />
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
                                                                        <asp:TemplateField HeaderText="Item Code">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblItemCode" runat="server" Text='<%#Eval("Item Code")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Item Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Item Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Item Group">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Item Group")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Item Type">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Item Type")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Max Rate">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Max Rate")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Minimum Qty">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Minimum Qty")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Purchase Locally">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Purchase Locally")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Center" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="GST Applicable">
                                                                            <ItemTemplate>
                                                                                <%#Eval("GST Applicable")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Center" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="GST %">
                                                                            <ItemTemplate>
                                                                                <%#Eval("GST Percentage")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="HSN Code">
                                                                            <ItemTemplate>
                                                                                <%#Eval("HSN Code")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Active">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Active")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Center" CssClass="txtuppper" Wrap="false" />
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
