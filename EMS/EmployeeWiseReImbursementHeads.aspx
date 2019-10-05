<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_EmployeeWiseReImbursementHeads, App_Web_1zdtagca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <%--<script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_Employee");
            if (o != null) {
                o.add_populating(function () {
                    o.set_contextKey($get("<%=txtOfficeName.ClientID %>").value);
                });
            }
        }
    </script>--%>
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
                                <%--<div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-warning">
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <asp:Label ID="lblheader" runat="server" Text="Employee Wise Re-Imbursement Heads" CssClass="h4 card-title"></asp:Label>
                                                    </div>
                                                    <div class="col-md-4 text-right">
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
                                                                                <label class="">Office Name<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtOfficeName" runat="server" CssClass="form-control text-uppercase"
                                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                    runat="server" ID="ace_Office" BehaviorID="ace_Office" CompletionInterval="10"
                                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                    MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                                    TargetControlID="txtOfficeName" UseContextKey="false">
                                                                                </AjaxTools:AutoCompleteExtender>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtOfficeName" runat="server" ControlToValidate="txtOfficeName"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Office Name can not be blank"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtOfficeName" runat="server"
                                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtOfficeName">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label class="">Employee Name<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                                    AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                                    runat="server" ID="ace_Employee" BehaviorID="ace_Employee" CompletionInterval="10"
                                                                                    CompletionListCssClass="autocomplete_completionListElement"
                                                                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                                    CompletionListItemCssClass="autocomplete_listItem"
                                                                                    DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                                    MinimumPrefixLength="1" ServiceMethod="GetEmployeeByOfficeHelp" ServicePath="~/WService.asmx"
                                                                                    TargetControlID="txtEmployeeName" UseContextKey="false">
                                                                                </AjaxTools:AutoCompleteExtender>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtEmployeeName" runat="server" ControlToValidate="txtEmployeeName"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Employee Name can not be blank"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtEmployeeName" runat="server"
                                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtEmployeeName">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label class="">w.e.f.<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtwef" runat="server" AutoComplete="off"
                                                                                    onfocus="this.select();" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="rfv1txtDate" runat="server" ControlToValidate="txtwef"
                                                                                    Display="None" ErrorMessage="From Date can not be blank !" ValidationGroup="report"
                                                                                    Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce1txtDate" runat="server" Enabled="True"
                                                                                    PopupPosition="TopRight" TargetControlID="rfv1txtDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                                <AjaxTools:CalendarExtender ID="vce_Date" runat="server" Format="dd/MM/yyyy" TargetControlID="txtwef">
                                                                                </AjaxTools:CalendarExtender>
                                                                                <AjaxTools:MaskedEditExtender ID="MskDate" runat="server" ClearTextOnInvalid="True"
                                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtwef"
                                                                                    UserDateFormat="DayMonthYear">
                                                                                </AjaxTools:MaskedEditExtender>
                                                                                <asp:RegularExpressionValidator ID="revtxtDate" runat="server" ControlToValidate="txtwef"
                                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                    ValidationGroup="report">
                                                                                </asp:RegularExpressionValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vcetxtDate" runat="server" Enabled="True"
                                                                                    TargetControlID="revtxtDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label class="">Total Re-Imbursement<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtTotalReImbursement" runat="server" CssClass="form-control text-uppercase text-right col-md-4"
                                                                                    MaxLength="7" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="rfv_txtTotalReImbursement" runat="server" ControlToValidate="txtTotalReImbursement"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Total Re-Imbursement can not be blank"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtTotalReImbursement" runat="server"
                                                                                    PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtTotalReImbursement">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtTotalReImbursement" runat="server" FilterType="Numbers,Custom"
                                                                                    TargetControlID="txtTotalReImbursement">
                                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12 text-center">
                                                                            <asp:Button ID="btnProcess" runat="server" OnClick="btnProcess_Click" CssClass="btn btn-info" Text="Process"></asp:Button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="row" visible="false" id="divSave" runat="server">
                                                                        <div class="col-md-12" style="padding-left: 1px; padding-right: 1px;">
                                                                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
                                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                                    AutoGenerateColumns="false"
                                                                                    Width="100%" CssClass="table table-bordered table-hover mb-0" DataKeyNames="HeadID"
                                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                                            <ItemTemplate>
                                                                                                <%#Container.DataItemIndex+1 %>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle Wrap="false" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Head Name">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblHeadID" runat="server" Visible="false" Text='<%#Eval("HeadID")%>'></asp:Label>
                                                                                                <%#Eval("Head Name")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Amount">
                                                                                            <ItemTemplate>
                                                                                                <asp:TextBox ID="txtAmount" runat="server" MaxLength="7" CssClass="form-control text-right"
                                                                                                    onchange="AmountChange()">
                                                                                                </asp:TextBox>
                                                                                                <AjaxTools:FilteredTextBoxExtender ID="fte_txtAmount" runat="server" Enabled="true"
                                                                                                    FilterType="Numbers,Custom" ValidChars="." TargetControlID="txtAmount">
                                                                                                </AjaxTools:FilteredTextBoxExtender>
                                                                                                <AjaxTools:TextBoxWatermarkExtender ID="twe_txtAmount" runat="server" Enabled="true"
                                                                                                    WatermarkText="0.00" TargetControlID="txtAmount">
                                                                                                </AjaxTools:TextBoxWatermarkExtender>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="110px" />
                                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" Width="110px" />
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
                                                                        <div class="col-md-10 text-right">
                                                                            <label>Total :</label>
                                                                        </div>
                                                                        <div class="col-md-2 mt-0 p-0">
                                                                            <div class="form-group">
                                                                            <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control text-right disabled" Enabled="false" ></asp:TextBox>
                                                                        </div></div>
                                                                        <div class="col-md-12 text-center">
                                                                            <input type="button" id="htmlSave" runat="server" class="btn btn-info" value="Save" onclick="DisableSaveClick();" />
                                                                            <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="d-none" />
                                                                            <asp:Button ID="btnCancel" OnClick="btnCancel_Click" runat="server" CssClass="btn btn-default" Text="Cancel"></asp:Button>
                                                                            <asp:Button ID="btnAmount" OnClick="btnAmount_Click" runat="server" CssClass="d-none" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>--%>
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
                                                        <label class="text-white">Search by Head Code or Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-primary mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <%--<button id="btnAdd" onserverclick="btnAdd_Click" runat="server" class="btn btn-dark mt-0 mb-0"><i class="material-icons">add_circle_outline</i></button>--%>
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-primary mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
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
            <asp:PostBackTrigger ControlID="lnkExport" />
        </Triggers>
    </asp:UpdatePanel>
    <%--<script language="javascript" type="text/javascript">

        function DisableSaveClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }
        function AmountChange() {
            document.getElementById("<%=btnAmount.ClientID %>").click();
        }
    </script>--%>
</asp:Content>
