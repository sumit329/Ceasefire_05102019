function callMultiplePopup(url, width, height, strValue, strNoOfValue) {
    if (strValue != "" && strNoOfValue != "0") {
        var left = (screen.width / 2) - (width / 2);
        var top = (screen.height / 2) - (height / 2);
        window.open('' + url + '', '_blank', 'toolbar=no,status=no,menubar=no,location=center,scrollbars=yes,resizable=no,height=' + height + ',width=' + width + ', top=' + top + ', left=' + left);
        return false;
    }
}    
