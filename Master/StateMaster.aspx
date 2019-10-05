<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_StateMaster, App_Web_5tvxh1jd" %>

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
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="card-title">State Master</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right"><small>Fields with <span class="text-danger">*</span> mark are mandatory.</small></div>
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
                                                                            Country Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:DropDownList ID="ddlCountryName" runat="server" CssClass="form-control"
                                                                            Font-Bold="true" AutoPostBack="false">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="rfv1ddlCountryName" runat="server" ControlToValidate="ddlCountryName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Country name can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce1ddlCountryName" runat="server" Enabled="True"
                                                                            TargetControlID="rfv1ddlCountryName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            State Type
                                                                        </label>
                                                                        <asp:DropDownList ID="ddlStateType" runat="server" CssClass="form-control"
                                                                            Font-Bold="true">
                                                                            <asp:ListItem Text="STATE" Value="STATE"></asp:ListItem>
                                                                            <asp:ListItem Text="UT" Value="UT"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            State Code<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtStateCode" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            MaxLength="5" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtStateCode" runat="server" ControlToValidate="txtStateCode"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="State code can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtStateCode" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtStateCode">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            State Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtStateName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv1txtStateName" runat="server" ControlToValidate="txtStateName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="State name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtStateName" runat="server" Enabled="True"
                                                                            TargetControlID="rfv1txtStateName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            GST Number
                                                                        </label>
                                                                        <asp:TextBox ID="txtGSTNo" runat="server"
                                                                            MaxLength="16" AutoComplete="off" onfocus="this.select();"
                                                                            CssClass="form-control text-uppercase">
                                                                        </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6" runat="server" id="trActive" visible="false">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Active
                                                                        </label>
                                                                        <asp:CheckBox ID="chkIsActive" Checked="true" runat="server" />
                                                                    </div>
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
                                                        <label class="text-white">Search by State Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-success mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-info mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="max-height: 300px; height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="StateID" AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-info d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("StateID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="View" CommandArgument='<%#Eval("StateID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger d-none" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("StateID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                        runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                        TargetControlID="btnDelete">
                                                                                    </AjaxTools:ConfirmButtonExtender>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
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

