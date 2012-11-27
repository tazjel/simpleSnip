" Aspx Snippets for the simpleSnip.vim plugin

" Aspx
    " IMport
         iabb <buffer> IM 
        \<%@ Import Namespace = "aaNamespace" %> 
        \<esc>:cal S(1)<cr>
    " LAbel
        iabb <buffer> LA 
        \<asp:Label ID="aaId" runat="server" Text="aaText">
        \<esc>:cal S(2)<cr>
    " BUtton
        iabb <buffer> BU 
        \<asp:Button ID="aaId" runat="server" Text="aaText" onclick="aaEvent" />
        \<esc>:cal S(2)<cr>
    " GridView
        iabb <buffer> GV 
        \<asp:GridView ID="aaId" runat="server"></asp:GridView>
        \<esc>:cal S(1)<cr>
