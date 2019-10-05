<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="CommonModule_Planner, App_Web_e2av5fen" title="Planner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="right_col" role="main">
                <div class="">
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
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
                    <div class="page-title">
                        <div class="col-md-4 col-sm-12 col-xs-12" style="padding-top: 16px;">
                            Fields with <span style="color: Red">*</span> mark are mandatory.
                        </div>
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <h3 class="headerhelpclasss">Planner</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_content">

                                    <div class="form-horizontal form-label-left">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Event Date
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtEventDate" runat="server" onfocus="this.select()" autocomplete="off"
                                                        CssClass="form-control">
                                                    </asp:TextBox>
                                                    &nbsp;<span style="color: Red">*</span>
                                                    <AjaxTools:CalendarExtender ID="ce_txtEventDate" runat="server" Format="dd/MM/yyyy"
                                                        TargetControlID="txtEventDate">
                                                    </AjaxTools:CalendarExtender>
                                                    <AjaxTools:MaskedEditExtender ID="Msk_txtEventDate" runat="server" ClearTextOnInvalid="True"
                                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                                        CultureTimePlaceholder="" Enabled="True" Mask="99/99/9999" MaskType="Date" TargetControlID="txtEventDate"
                                                        UserDateFormat="DayMonthYear">
                                                    </AjaxTools:MaskedEditExtender>
                                                    <asp:RegularExpressionValidator ID="rev_txtEventDate" runat="server" ControlToValidate="txtEventDate"
                                                        Display="None" ErrorMessage="Please enter valid date(dd/MM/yyyy)" SetFocusOnError="false"
                                                        ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
                                                        ValidationGroup="save">
                                                    </asp:RegularExpressionValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtEventDate" runat="server" Enabled="True"
                                                        TargetControlID="rev_txtEventDate">
                                                    </AjaxTools:ValidatorCalloutExtender>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Event Title
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtTitle" runat="server" AutoComplete="off" onfocus="this.select();"
                                                        MaxLength="200" Style="text-transform: uppercase" CssClass="form-control">
                                                    </asp:TextBox>
                                                    <span style="color: Red">*</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Event Description
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtDescription" runat="server" Style="height: 50px; text-transform: uppercase;"
                                                        AutoComplete="off" TextMode="MultiLine" onfocus="this.select();"
                                                        CssClass="form-control">
                                                    </asp:TextBox>
                                                    <span style="color: Red">*</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">

                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">

                                                    <input class="btn btn-success" id="htmlSave"
                                                        onclick="DisableClick();" type="button" value="Save" name="htmlSave" runat="server" />
                                                    <asp:Button ID="btnSave" runat="server" Style="display: none" BackColor="#0E6794"
                                                        ForeColor="White" Height="0px" Width="0px" Text="" ValidationGroup="save" OnClick="btnSave_Click" />
                                                    <input class="btn btn-success" id="htmlUpdate"
                                                        onclick="DisableClickUpdate();" type="button" value="Update" name="htmlUpdate"
                                                        runat="server" />
                                                    <asp:Button ID="btnUpdate" runat="server" Style="display: none" BackColor="#0E6794"
                                                        ForeColor="White" Height="0px" Width="0px" Text="" ValidationGroup="save" OnClick="btnUpdate_Click" />
                                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-success"
                                                        OnClick="btnCancel_Click" />

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12" id="tblGrdAndButton" runat="server">
                            <div class="x_panel">

                                <div class="x_content">
                                    <div class="table-responsive">
                                        <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="false"
                                            Width="100%" CssClass="table table-bordered"
                                            DataKeyNames="EventID"
                                            AllowSorting="false" EmptyDataText="Record Not Available..."
                                            CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                            OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                            OnRowDeleting="grdMasterView_RowDeleting" OnRowEditing="grdMasterView_RowEditing"
                                            OnRowCreated="grdMasterView_RowCreated">
                                            <Columns>
                                                <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("EventID")%>' />
                                                        &nbsp;|
                                                                        <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="Delete"
                                                                            CommandArgument='<%#Eval("EventID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                TargetControlID="btnDelete">
                                                                            </AjaxTools:ConfirmButtonExtender>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" CssClass="width70" VerticalAlign="Top" />
                                                    <ItemStyle Wrap="false" VerticalAlign="Top" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="SL#">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1 %>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" CssClass="width30" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Center" CssClass="width30" VerticalAlign="Top" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Event Date">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblEventDate" runat="server" Text='<%#Eval("Event Date")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="width60" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="width60" VerticalAlign="Top" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Title">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTitle" runat="server" Text='<%#Eval("Title")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="width120" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="width120" VerticalAlign="Top" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDescription" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="" VerticalAlign="Top" />
                                                </asp:TemplateField>
                                            </Columns>
                                            <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                            <PagerStyle CssClass="pagerstyle" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="false" />
                                            <RowStyle Wrap="false" />
                                            <AlternatingRowStyle />
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script language="javascript" type="text/javascript">

        function DisableClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }

        function DisableClickUpdate() {
            document.getElementById("<%=htmlUpdate.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlUpdate.ClientID %>").value = msg;
            document.getElementById("<%=btnUpdate.ClientID %>").click();
        }

    </script>

</asp:Content>
