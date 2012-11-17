" simpleSnip.vim
"
" Version 1.0
"
" Authors: Alexandre Viau with thanks to Xaizek and Stephan Bittner for the
" search function used to find placeholders.
"
" Description:
" This plugin allow to simply create and use snippets using vim abbreviations.
" It allow to use placeholders in snippets and replace multiple placeholders
" at once. Snippets may be used with any programming languages or for any kind of writing, not only programming.
"
" Installation:
" Copy the plugin file:
" simpleSnip.vim
"
" and the snippets files:
" simpleSnip_CSharpSnippets.vim
" simpleSnip_HtmlSnippets.vim
" simpleSnip_SqlSnippets.vim
"
" to your plugin directory. Then source (open the file and do so %) the files or restart vim.
"
" Usage:
" If you add your own snippets files, source them when you add snippets to them.
" See the snippets in the snippets file:
"
" This usage example uses the CL snippet in the simpleSnip_CSharpSnippets.vim: 
"
" To add a new class in c#, go in insert mode (i) and type CL then press the escape key. The snippet will be inserted.
" Press 'n' or 'N' to move to from one placeholder to another in the snippet (note: aa is used as a prefix to search, you may change it if you don't like).
" Then do the vim command 'cw' (change word) to replace the current placeholder by the text you type, press the escape key.
" If the placeholder exists many times in the snippets, all occurences will be replaced after pressing the escape key.
"
" This is an example of a snippet. Notice that it is simple a vim abbreviation
" containing placeholders prefixed by 'aa' and at then end the function S() is
" called. The number '2' in parameter to the S(2) function here means is the
" number of placeholders in the snippet, here the placeholders are 'aaProgram'
" and 'aaCode'. You specify it so that the search will go back and the cursor 
" will be on the first placeholder when the snippet is inserted. Check the
" snippets files for more example.
"
" abb MA 
" \class aaProgram<cr>
" \{<cr>
" \static void Main()<cr>
" \{<cr>
" \aaCode<cr>
" \}<cr>
" \}
" \<esc>:cal S(2)<cr>
"
" ----------------------------------------------------------------------------------------------------------------
"
" These three commands are there to make indentation work correctly for the snippets in their own filetypes. Deactivate 'autoindent' or 'smart indent' if activated. 
filetype on
filetype plugin on
filetype indent on

" To find placeholders in snippets
fu! S(n)
    let @/ = "aa" " Simulate search like /aa (normal /aa may also be used) Credit: Xaizek and Stephan Bittner. If you don't like the 'aa' prefix you may use another string.
    " Search back the placeholders
    exe 'normal '.a:n.'N'
endfu

" Replaces all occurences of snippets placeholders by the word specified
fu! ReplaceAll()
    " Get the word stored in the paste register when 'cw' is done, this is the word to replace
    let l:from = getreg('"')
    " If the word to replace start with aa then it is a placeholder
    if strpart(l:from, 0, 2) == 'aa' 
        " Get the replacement word
        let l:to = expand("<cword>")
        " Replace all placeholders by the replacement word
        exe '%s/' . l:from . '/' . l:to . '/ge'
        " Reinitialize the paste register not to replace again on the next <esc> in insert mode
        call setreg('"', '')
    endif
endfu

imap <esc> <esc>:call ReplaceAll()<cr>
