" Html Snippets for the simpleSnip.vim plugin

" Structure
    " HTml page
        iabb <buffer> HT 
        \<html><cr>
        \<head><cr>
        \<title>aaTitle</title><cr>
        \<style><cr>
        \aaStyle<cr>
        \</style><cr>
        \</head><cr>
        \<body><cr>
        \aaBody<cr>
        \</body><cr>
        \</html>
        \<esc>:cal S(3)<cr>

" Form
    " FOrm
        iabb <buffer> FO 
        \<form id="aaId" action="aaAction" method="aaMethod[GET,POST]"><cr>
        \aaFormCode<cr>
        \</form>
        \<esc>:cal S(4)<cr>
    " Controls
        " BUtton
            iabb <buffer> BU 
            \<input id="aaId" type="aaType[button,submit,reset]" value="aaValue" onclick="return aaFunctionName(aaParameter)" />
            \<esc>:cal S(5)<cr>

        " TExt box
            iabb <buffer> TE 
            \<input id="aaId" type="text" value="aaValue" />
            \<esc>:cal S(2)<cr>

" Javascript
    iabb <buffer> JA 
    \<script language="javascript" type="text/javascript"><cr>
    \// <![CDATA[<cr>
    \aaScriptCode<cr>
    \// ]]><cr>
    \</script>
    \<esc>:cal S(1)<cr>
