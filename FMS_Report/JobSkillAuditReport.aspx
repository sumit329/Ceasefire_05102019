<%@ page title="Job Skill Audit Report" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_Report_JobSkillAuditReport, App_Web_fniymg1e" %>

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
                                            <div class="card-header card-header-info  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                        <%--<h4 class="card-title">Job Skill Audit Report</h4>--%>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-5">
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
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Month</label>
                                                                <asp:DropDownList ID="ddlMonth" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();">
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Year</label>
                                                                <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control text-uppercase"
                                                                    AutoComplete="off" onfocus="this.select();">
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 d-flex mt-3 pt-2">
                                                            <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-danger"
                                                                OnClick="btnSearch_Click" />
                                                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-default"
                                                                OnClick="btnCancel_Click" />
                                                            <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-primary"><i class="material-icons">save_alt</i></button>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="pnlJOBSKILLAUDIT" runat="server" ScrollBars="Auto" CssClass="mt-4" Style="height: auto; width: 80vw;">
                                                                <asp:GridView ID="grdJOBSKILLAUDIT" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdJOBSKILLAUDIT_PageIndexChanging"
                                                                    OnRowDataBound="grdJOBSKILLAUDIT_RowDataBound">
                                                                    <Columns>
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
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto; width: 80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                                    OnRowDataBound="grdMasterView_RowDataBound">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Branch Name">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblBranchName" runat="server" Text='<%#Eval("Branch Name")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Employee Name">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblEmployeeName" runat="server" Text='<%#Eval("Employee Name")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Work Status">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblWorkStatus" runat="server" Text='<%#Eval("Work Status")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Last Audit Date">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblLastAuditDate" runat="server" Text='<%#Eval("Last Audit Date")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="1">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk1" runat="server" Text='<%#Eval("1")%>' CommandArgument='<%#Eval("1")+"|"+"1"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="2">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk2" runat="server" Text='<%#Eval("2")%>' CommandArgument='<%#Eval("2")+"|"+"2"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="3">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk3" runat="server" Text='<%#Eval("3")%>' CommandArgument='<%#Eval("3")+"|"+"3"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="4">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk4" runat="server" Text='<%#Eval("4")%>' CommandArgument='<%#Eval("4")+"|"+"4"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="5">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk5" runat="server" Text='<%#Eval("5")%>' CommandArgument='<%#Eval("5")+"|"+"5"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="6">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk6" runat="server" Text='<%#Eval("6")%>' CommandArgument='<%#Eval("6")+"|"+"6"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="7">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk7" runat="server" Text='<%#Eval("7")%>' CommandArgument='<%#Eval("7")+"|"+"7"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="8">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk8" runat="server" Text='<%#Eval("8")%>' CommandArgument='<%#Eval("8")+"|"+"8"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="9">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk9" runat="server" Text='<%#Eval("9")%>' CommandArgument='<%#Eval("9")+"|"+"9"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="10">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk10" runat="server" Text='<%#Eval("10")%>' CommandArgument='<%#Eval("10")+"|"+"10"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="11">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk11" runat="server" Text='<%#Eval("11")%>' CommandArgument='<%#Eval("11")+"|"+"11"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="12">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk12" runat="server" Text='<%#Eval("12")%>' CommandArgument='<%#Eval("12")+"|"+"12"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="13">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk13" runat="server" Text='<%#Eval("13")%>' CommandArgument='<%#Eval("13")+"|"+"13"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="14">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk14" runat="server" Text='<%#Eval("14")%>' CommandArgument='<%#Eval("14")+"|"+"14"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="15">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk15" runat="server" Text='<%#Eval("15")%>' CommandArgument='<%#Eval("15")+"|"+"15"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="16">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk16" runat="server" Text='<%#Eval("16")%>' CommandArgument='<%#Eval("16")+"|"+"16"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="17">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk17" runat="server" Text='<%#Eval("17")%>' CommandArgument='<%#Eval("17")+"|"+"17"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="18">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk18" runat="server" Text='<%#Eval("18")%>' CommandArgument='<%#Eval("18")+"|"+"18"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="19">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk19" runat="server" Text='<%#Eval("19")%>' CommandArgument='<%#Eval("19")+"|"+"19"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="20">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk20" runat="server" Text='<%#Eval("20")%>' CommandArgument='<%#Eval("20")+"|"+"20"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="21">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk21" runat="server" Text='<%#Eval("21")%>' CommandArgument='<%#Eval("21")+"|"+"21"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="22">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk22" runat="server" Text='<%#Eval("22")%>' CommandArgument='<%#Eval("22")+"|"+"22"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="23">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk23" runat="server" Text='<%#Eval("23")%>' CommandArgument='<%#Eval("23")+"|"+"23"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="24">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk24" runat="server" Text='<%#Eval("24")%>' CommandArgument='<%#Eval("24")+"|"+"24"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="25">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk25" runat="server" Text='<%#Eval("25")%>' CommandArgument='<%#Eval("25")+"|"+"25"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="26">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk26" runat="server" Text='<%#Eval("26")%>' CommandArgument='<%#Eval("26")+"|"+"26"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="27">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk27" runat="server" Text='<%#Eval("27")%>' CommandArgument='<%#Eval("27")+"|"+"27"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="28">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk28" runat="server" Text='<%#Eval("28")%>' CommandArgument='<%#Eval("28")+"|"+"28"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="29">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk29" runat="server" Text='<%#Eval("29")%>' CommandArgument='<%#Eval("29")+"|"+"29"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="30">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk30" runat="server" Text='<%#Eval("30")%>' CommandArgument='<%#Eval("30")+"|"+"30"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="31">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnk31" runat="server" Text='<%#Eval("31")%>' CommandArgument='<%#Eval("31")+"|"+"31"+"|"+Eval("Branch Name")+"|"+Eval("Employee Name")%>' OnClick="lbtnJobSkillAudit_Click"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
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
