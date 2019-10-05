<%@ page title="Virtual Audit Request" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_VirtualAuditRequest, App_Web_4xfo1so1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_txtAreaName");
            if (o != null) {
                o.add_populating(function () {
                    o.set_contextKey($get("<%=txtBranchName.ClientID %>").value);
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
                                            <div class="card-header card-header-info">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                        <%--<h4 class="card-title">Assets Management</h4>--%>
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
                                                                        <label class="">Branch Name<%--<span class="text-danger">*</span>--%></label>
                                                                        <asp:TextBox ID="txtBranchName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_Office" BehaviorID="ace_Office" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtBranchName" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Area Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtAreaName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_txtAreaName" BehaviorID="ace_txtAreaName" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeWiseAreaNameHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtAreaName" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtAreaName" runat="server" ControlToValidate="txtAreaName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Area Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtAreaName" runat="server" PopupPosition="BottomRight"
                                                                            Enabled="True" TargetControlID="rfv_txtAreaName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <label class="mb-0 pl-4">Audit Completion<span class="text-danger">*</span></label>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <label class="mb-0 pl-4">Required<span class="text-danger">*</span></label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3 pr-0">
                                                                    <div class="row">
                                                                        <div class="col-md-6 pr-0">
                                                                            <div class="form-group">
                                                                                <label>Date</label>
                                                                                <asp:TextBox ID="txtAuditCompletionDate" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                                <AjaxTools:CalendarExtender ID="ce_txtAuditCompletionDate" runat="server" Format="dd/MM/yyyy"
                                                                                    TargetControlID="txtAuditCompletionDate">
                                                                                </AjaxTools:CalendarExtender>
                                                                                <AjaxTools:MaskedEditExtender ID="Msk_txtAuditCompletionDate" runat="server" ClearTextOnInvalid="True"
                                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                                                    CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date"
                                                                                    TargetControlID="txtAuditCompletionDate"
                                                                                    UserDateFormat="DayMonthYear">
                                                                                </AjaxTools:MaskedEditExtender>
                                                                                <asp:RegularExpressionValidator ID="rev_txtAuditCompletionDate" runat="server"
                                                                                    ControlToValidate="txtAuditCompletionDate"
                                                                                    Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                                                    ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                                                    ValidationGroup="save">
                                                                                </asp:RegularExpressionValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtAuditCompletionDate" runat="server" Enabled="True"
                                                                                    TargetControlID="rev_txtAuditCompletionDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                                <asp:RequiredFieldValidator ID="rfv_txtAuditCompletionDate" runat="server" ControlToValidate="txtAuditCompletionDate"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Audit Completion Date can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce1_txtAuditCompletionDate" runat="server" PopupPosition="BottomRight"
                                                                                    Enabled="True" TargetControlID="rfv_txtAuditCompletionDate">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4 pl-0 pr-0">
                                                                            <div class="form-group">
                                                                                <label class="">Time</label>
                                                                                <asp:TextBox ID="txtAuditCompletionTime" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                                <AjaxTools:MaskedEditExtender ID="mee_txtAuditCompletionTime" runat="server" TargetControlID="txtAuditCompletionTime"
                                                                                    Mask="99:99" MaskType="Time" UserTimeFormat="None" ClearTextOnInvalid="True"
                                                                                    AcceptAMPM="false">
                                                                                </AjaxTools:MaskedEditExtender>
                                                                                <asp:RegularExpressionValidator ID="rev_txtAuditCompletionTime" runat="server"
                                                                                    ErrorMessage="Please enter valid date(hh:mm)" Display="None" ControlToValidate="txtAuditCompletionTime"
                                                                                    ValidationExpression="^((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))$|^([01]\d|2[0-3])(:[0-5]\d){1,2}$"></asp:RegularExpressionValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce_txtAuditCompletionTime" runat="server" Enabled="True"
                                                                                    TargetControlID="rev_txtAuditCompletionTime">
                                                                                </AjaxTools:ValidatorCalloutExtender>

                                                                                <asp:RequiredFieldValidator ID="rfv_txtAuditCompletionTime" runat="server" ControlToValidate="txtAuditCompletionTime"
                                                                                    SetFocusOnError="true" Display="None" ErrorMessage="Audit Completion Time can not be blank !"
                                                                                    ValidationGroup="save" Font-Size="8pt">
                                                                                </asp:RequiredFieldValidator>
                                                                                <AjaxTools:ValidatorCalloutExtender ID="vce2_txtAuditCompletionTime" runat="server" PopupPosition="BottomRight"
                                                                                    Enabled="True" TargetControlID="rfv_txtAuditCompletionTime">
                                                                                </AjaxTools:ValidatorCalloutExtender>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="row">
                                                                        <div class="col-md-4 text-center">
                                                                            <label class="">Image</label>
                                                                            <asp:CheckBox ID="IsImageRequired" runat="server"></asp:CheckBox>
                                                                        </div>
                                                                        <div class="col-md-4 text-center">
                                                                            <label class="">Video</label>
                                                                            <asp:CheckBox ID="IsVideoRequired" runat="server"></asp:CheckBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Remarks</label>
                                                                        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" CssClass="form-control text-uppercase"></asp:TextBox>
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
                                                        <div class="col-md-12">
                                                            <h6>Blank Branch Name will Send notification to all the Branches ! </h6>
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
                                                        <label class="text-white">Search by Branch Name</label>
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
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <%-- <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("VirtualAuditRequestID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>--%>
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
