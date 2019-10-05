<%@ page title="Audit Checklist Master" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_AuditChecklistMaster, App_Web_4xfo1so1" %>

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
                                                <%--<h4 class="card-title">Audit Checklist Master</h4>--%>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Audit Type<span class="text-danger">*</span></label>
                                                                        <asp:DropDownList ID="ddlAuditType" runat="server" CssClass="form-control text-uppercase" AutoPostBack="True">
                                                                            <asp:ListItem Value="FMS AUDIT" Text="FMS AUDIT"></asp:ListItem>
                                                                            <asp:ListItem Value="SUPERVISOR AUDIT" Text="SUPERVISOR AUDIT"></asp:ListItem>
                                                                            <asp:ListItem Value="BOTH" Text="BOTH"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Category<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtCategory" runat="server" ControlToValidate="txtCategory"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Category can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtCategory" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtCategory">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_Category" BehaviorID="ace_Category" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetCategory_AuditHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtCategory" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Audit Activity Description<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtAuditActivityDescription" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtAuditActivityDescription" runat="server" ControlToValidate="txtAuditActivityDescription"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Audit Activity Description can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtAuditActivityDescription" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtAuditActivityDescription">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Activity Recurrence<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtActivityRecurrence" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtActivityRecurrence" runat="server" ControlToValidate="txtActivityRecurrence"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Activity Recurrence can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtActivityRecurrence" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtActivityRecurrence">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_ActivityRecurrence" BehaviorID="ace_ActivityRecurrence" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetActivityRecurrenceHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtActivityRecurrence" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 mt-4">
                                                                    <label class="">Image Required</label>
                                                                    <asp:CheckBox ID="chkIsImageRequired" runat="server"></asp:CheckBox>
                                                                </div>
                                                                <div class="col-md-3 mt-4">
                                                                    <label class="">Video Required</label>
                                                                    <asp:CheckBox ID="chkIsVideoRequired" runat="server"></asp:CheckBox>
                                                                </div>
                                                                <div class="col-md-3 mt-4">
                                                                    <label class="">Remarks Required</label>
                                                                    <asp:CheckBox ID="chkIsRemarksRequired" runat="server"></asp:CheckBox>
                                                                </div>
                                                                <div class="col-md-3 mt-2" runat="server" visible="false" id="trActive">
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-info  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Audit Type</label>
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
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;width: 80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="AuditChecklistMasterID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("AuditChecklistMasterID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
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
