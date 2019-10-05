<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_ReImbursementClaim, App_Web_1zdtagca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_Head");
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
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-warning">
                                                <div class="row">
                                                    <div class="col-md-9">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h5 card-title"
                                                            Text="RE-IMBURSEMENT CLAIM"></asp:Label>
                                                    </div>
                                                    <div class="col-md-3 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label class="">Employee Name</label>
                                                                                <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label class="">Total Amt(Annual)</label>
                                                                                <asp:TextBox ID="txtTotalReImbursement" runat="server" Enabled="false" CssClass="form-control text-right"
                                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label>Balance Amt(Annual)</label>
                                                                                <asp:TextBox ID="txtBalanceAmtAnnual" runat="server" Enabled="false" AutoComplete="off" CssClass="form-control text-right"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label>Bill For The Month <span class="text-danger">*</span></label>
                                                                                <asp:DropDownList ID="ddlMonth" runat="server" CssClass="form-control text-uppercase"
                                                                                    AutoComplete="off" onfocus="this.select();">
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label class="">Year <span class="text-danger">*</span></label>
                                                                                <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control text-uppercase"
                                                                                    AutoComplete="off" onfocus="this.select();">
                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label class="">Head Name <span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtHeadName" runat="server" AutoComplete="off" CssClass="form-control text-uppercase"
                                                                                    OnTextChanged="txtHeadName_TextChanged" AutoPostBack="true" onfocus="this.select();"></asp:TextBox>

                                                                                <asp:RequiredFieldValidator ID="rfv_txtHeadName" runat="server" ControlToValidate="txtHeadName"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Head can not be blank"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtHeadName" runat="server"
                                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtHeadName">
                                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                    runat="server" ID="ace_Head" BehaviorID="ace_Head" CompletionInterval="10"
                                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                    MinimumPrefixLength="1" ServiceMethod="GetHeadNameHelp" ServicePath="~/WService.asmx"
                                                                                    TargetControlID="txtHeadName" UseContextKey="true">
                                                                                </AjaxTools:AutoCompleteExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label>Head Amount</label>
                                                                                <asp:TextBox ID="txtEligibleAmount" runat="server" Enabled="false" AutoComplete="off" CssClass="form-control text-right"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label class="">Bill No <span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtBillNo" MaxLength="20" runat="server" CssClass="form-control text-uppercase"
                                                                                    onfocus="this.select();" AutoComplete="off"></asp:TextBox>
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
                                                                                <label class="">Bill Date <span class="text-danger">*</span></label>
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
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label class="">Bill Amount <span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtBillAmount" MaxLength="10" runat="server" CssClass="form-control text-right"
                                                                                    onfocus="this.select();" AutoComplete="off"></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtBillAmount" runat="server" ControlToValidate="txtBillAmount"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Bill Amount can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtBillAmount" runat="server"
                                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtBillAmount">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtBillAmount" runat="server" TargetControlID="txtBillAmount"
                                                                                    Enabled="true" FilterType="Numbers,Custom" ValidChars=".">
                                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label class="">Claim Amount <span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtClaimAmount" MaxLength="10" runat="server" CssClass="form-control text-right"
                                                                                    onfocus="this.select();" AutoComplete="off"></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtClaimAmount" runat="server" ControlToValidate="txtClaimAmount"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Claim Amount can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vcce_txtClaimAmount" runat="server"
                                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtClaimAmount">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtClaimAmount" runat="server" TargetControlID="txtClaimAmount"
                                                                                    Enabled="true" FilterType="Numbers,Custom" ValidChars=".">
                                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <label class="label-on-left">Bill Scan Copy Upload <span class="text-danger">*</span></label>
                                                                            <asp:FileUpload ID="fuBill" runat="server" CssClass="custom-file" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="form-group">
                                                                                <label class="">Remarks</label>
                                                                                <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" AutoComplete="off"
                                                                                    MaxLength="500" onfocus="this.select();" CssClass="form-control">
                                                                                </asp:TextBox>
                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 text-center">
                                                                    <input type="button" id="htmlSave" runat="server" class="btn btn-warning" value="Save" onclick="DisableSaveClick();" />
                                                                    <asp:Button ID="btnSave" runat="server" CssClass="d-none" OnClick="btnSave_Click" />
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
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
                                            <div class="card-header card-header-warning  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="lblheader2" runat="server" CssClass="h4 card-title m-4"
                                                            Text="Re-Imbursement Master"></asp:Label>
                                                        <%--<h4 class="card-title">Master</h4>--%>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Head Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-primary mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <button id="btnAdd" onserverclick="btnAdd_Click" runat="server" class="btn btn-dark mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>
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
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="ReimbursentClaimID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="VIEW DOCUMENT" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lbtnFilePath" CommandArgument='<%#Eval("DocumentPath")%>' OnClick="lbtnFilePath_Click" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>open_in_browser</i>"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
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
            <asp:PostBackTrigger ControlID="btnSave" />
            <asp:PostBackTrigger ControlID="lnkExport" />
        </Triggers>
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">

        function DisableSaveClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }

    </script>
</asp:Content>
