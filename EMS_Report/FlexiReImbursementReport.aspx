<%@ page title="FlexiReImbursementReport " language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_Report_FlexiReImbursementReport, App_Web_o0ukmeua" %>

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
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-warning  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title ml-3"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label class="">Office Name</label>
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
                                                            </div>
                                                        </div>
                                                        <div id="divEmployeeName" runat="server" class="col-md-4">
                                                            <div class="form-group">
                                                                <label class="">Employee Name<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();"
                                                                    onchange="EmployeeNameChange()"></asp:TextBox>
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
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">From Date<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtFromDate" runat="server" AutoComplete="off"
                                                                    onfocus="this.select();" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfv1txtDate" runat="server" ControlToValidate="txtFromDate"
                                                                    Display="None" ErrorMessage="From Date can not be blank !" ValidationGroup="report"
                                                                    Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vce1txtDate" runat="server" Enabled="True"
                                                                    PopupPosition="TopRight" TargetControlID="rfv1txtDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                <AjaxTools:CalendarExtender ID="vce_Date" runat="server" Format="dd/MM/yyyy" TargetControlID="txtFromDate">
                                                                </AjaxTools:CalendarExtender>
                                                                <AjaxTools:MaskedEditExtender ID="MskDate" runat="server" ClearTextOnInvalid="True"
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtFromDate"
                                                                    UserDateFormat="DayMonthYear">
                                                                </AjaxTools:MaskedEditExtender>
                                                                <asp:RegularExpressionValidator ID="revtxtDate" runat="server" ControlToValidate="txtFromDate"
                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                    ValidationGroup="report">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="vcetxtDate" runat="server" Enabled="True"
                                                                    TargetControlID="revtxtDate">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">To Date<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtToDate" runat="server" AutoComplete="off"
                                                                    onfocus="this.select();" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtToDate"
                                                                    Display="None" ErrorMessage="To Date can not be blank !" ValidationGroup="report"
                                                                    Font-Size="8pt">
                                                                </asp:RequiredFieldValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server"
                                                                    Enabled="True" PopupPosition="TopRight" TargetControlID="RequiredFieldValidator1">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                <AjaxTools:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy"
                                                                    TargetControlID="txtToDate">
                                                                </AjaxTools:CalendarExtender>
                                                                <AjaxTools:MaskedEditExtender ID="MaskedEditExtender1" runat="server" ClearTextOnInvalid="True"
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtToDate"
                                                                    UserDateFormat="DayMonthYear">
                                                                </AjaxTools:MaskedEditExtender>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtToDate"
                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                    ValidationGroup="report">
                                                                </asp:RegularExpressionValidator>
                                                                <AjaxTools:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server"
                                                                    Enabled="True" TargetControlID="RequiredFieldValidator1">
                                                                </AjaxTools:ValidatorCalloutExtender>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 d-flex mt-4 pt-1">
                                                            <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-danger mt-0 mb-0"
                                                                OnClick="btnSearch_Click" />
                                                            <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-primary mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto; width: 80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="View Bill" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lbtnOpenfile" CommandArgument='<%#Eval("DocumentPath")%>' OnClick="lbtnOpenfile_Click" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>open_in_browser</i>"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
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
</asp:Content>
