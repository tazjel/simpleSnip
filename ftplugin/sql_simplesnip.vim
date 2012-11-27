" SQL Snippets for the simpleSnip.vim plugin

" Select
    " SE
    iabb <buffer> SE 
    \SELECT<cr>
    \TOP aaNbRows<cr>
    \aaFields<cr>
    \FROM aaTables<cr>
    \WHERE aaCondition<cr>
    \GROUP BY aaGrouping<cr>
    \HAVING aaHaving<cr>
    \ORDER BY aaOrdering;
    \<esc>:cal S(7)<cr>
