<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_UserSession, App_Web_nbyko0ky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_User");
            if (o != null) {
                o.add_populating(function () {

                    o.set_contextKey($get("<%=txtOfficeName.ClientID %>").value);
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
                            <td style="width: 900px;">
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
                                        <div class="card mb-0" id="cardInput" runat="server">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="card-title">Active User Session</h4>
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
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Office Name
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeName" runat="server" Style="text-transform: uppercase"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_Office" runat="server" BehaviorID="ace_Office"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtOfficeName" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            User Name 
                                                                        </label>
                                                                        <asp:TextBox ID="txtUserName" runat="server" Style="text-transform: uppercase"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated" ID="ace_User" runat="server"
                                                                            BehaviorID="ace_User"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetEmployeeByOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtUserName" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 text-center">
                                                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-success" OnClick="btnSearch_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-12 text-right">
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-info mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="col-md-12">
                                                    <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                                        <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false" AutoGenerateColumns="true"
                                                            Width="100%" AllowSorting="false" EmptyDataText="Record Not Available..." CellPadding="1"
                                                            CellSpacing="1" GridLines="none" CssClass="table table-bordered table-hover" BorderWidth="0px"
                                                            OnRowCommand="grdMasterView_RowCommand" OnRowDeleting="grdMasterView_RowDeleting"
                                                            OnRowEditing="grdMasterView_RowEditing"
                                                            OnRowCreated="grdMasterView_RowCreated">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="lnkEdit" runat="server" CssClass="btn btn-success" Text="Kill Session" CommandName="Edit" CommandArgument='<%#Eval("EmployeeID")%>' />
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

