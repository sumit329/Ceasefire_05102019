<%@ page title="Office Type Master" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_OfficeTypeMaster, App_Web_0bwjz4hs" %>

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
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-danger">
                                                <h4 class="card-title">Office Type Master</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">Office Type Code<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtOfficeTypeCode" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="10" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtOfficeTypeCode" runat="server" ControlToValidate="txtOfficeTypeCode"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Type code can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtOfficeTypeCode" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtOfficeTypeCode">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <div class="form-group">
                                                                        <label class="">Office Type Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtOfficeTypeName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="25" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtOfficeTypeName" runat="server" ControlToValidate="txtOfficeTypeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Type Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtOfficeTypeName" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtOfficeTypeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6" runat="server" id="trActive" visible="false">
                                                                    <label class="">
                                                                        Active
                                                                    </label>
                                                                    <asp:CheckBox ID="chkIsActive" Checked="true" runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 text-center">
                                                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save"
                                                                ValidationGroup="save" OnClick="btnSave_Click" />
                                                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success" Visible="False" Text="Update"
                                                                CausesValidation="true" ValidationGroup="save" OnClick="btnUpdate_Click" />
                                                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-success" Text="Cancel"
                                                                OnClick="btnCancel_Click" />
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
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Type Code OR Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-success mt-0 mb-0" OnClick="btnSearch_Click" />
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-info mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered" DataKeyNames="OfficeTypeID" AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-success d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("OfficeTypeID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="View" CommandArgument='<%#Eval("OfficeTypeID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-success d-none" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("OfficeTypeID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                        runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                        TargetControlID="btnDelete">
                                                                                    </AjaxTools:ConfirmButtonExtender>
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



