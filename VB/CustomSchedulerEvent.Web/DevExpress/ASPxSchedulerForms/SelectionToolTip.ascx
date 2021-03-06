﻿<%@ Control Language="vb" AutoEventWireup="true" Inherits="UserForms_SelectionToolTip" Codebehind="SelectionToolTip.ascx.vb" %>
<%@ Register Assembly="DevExpress.Web.v18.1" Namespace="DevExpress.Web"
    TagPrefix="dxe" %>
<div runat="server" id="buttonDiv">
    <dxe:ASPxButton ID="btnShowMenu" runat="server" AutoPostBack="False" AllowFocus="False">
        <Border BorderWidth="0px" />
        <Paddings Padding="0px" />
        <FocusRectPaddings Padding="4px" />
        <FocusRectBorder BorderStyle="None" BorderWidth="0px" />
    </dxe:ASPxButton>
</div>    
<script type="text/javascript" id="dxss_">
    ASPxClientSelectionToolTip = _aspxCreateClass(ASPxClientToolTipBase, {
        Initialize: function() {
            ASPxClientUtils.AttachEventToElement(this.controls.buttonDiv, "click", _aspxCreateDelegate(this.OnButtonDivClick, this));
        },
        OnButtonDivClick: function(s,e) {
            this.ShowViewMenu(s);
        }
    });    
</script>