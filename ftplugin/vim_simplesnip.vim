" Vim script snippets for the simpleSnip.vim plugin

" List
    " LIst
        iabb <buffer> LI 
        \let aaName = [<cr>
        \\'aaValue1',<cr>
        \\'aaValue2'<cr>
        \\]
        \<esc>:cal S(3)<cr>

" Loop
    " FOr List
        iabb <buffer> FL 
        \for aaVar in aaList<cr>
        \aaCode<cr>
        \endfor
        \<esc>:cal S(3)<cr>

" Functions/Methods
    " FUnction
        iabb <buffer> FU 
        \<c-o>:set paste<cr>
        \funaaction! aaFunctionName(aaParam)<cr>
        \   aaCode<cr>
        \endfu
        \<esc>:cal S(4)<cr>
