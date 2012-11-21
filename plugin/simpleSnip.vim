" simpleSnip.vim
"
" Version 1.2
" 
" Authors: Alexandre Viau with thanks to xaizek and Stephan Bittner for helping.
"
" Description:
" This plugin allow to simply create and use snippets using vim abbreviations.
" It allow to use placeholders in snippets and replace multiple placeholders
" at once. Snippets may be used with any programming languages or for any kind of writing, not only programming.
"
" Installation:
" Unpack the archive to your $VIM directory.  It should contain the plugin file
" named simpleSnip.vim and several example snippet files:
"  - snipcs.vim (for C#)
"  - sniphtml.vim (for HTML)
"  - snipsql.vim (for SQL)
"
" Then source unpacked *.vim files (open the file and do :so%) or restart vim.
"
" Usage:
" If you add your own snippets files, source them when you add snippets to them.
" See the snippets in the snippets file:
"
" This usage example uses the CL snippet in the snipcs.vim: 
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
" If you prefer to indent the lines of code yourself in the snippet, add the "\<c-o>:set paste<cr>" line as the second line of the snippets and indent your code.
" Use tabs or space to indent your code. Here's an example.
"       
" iabb <buffer> CL 
" \<c-o>:set paste<cr>
" \class aaClassName<cr>
" \{<cr>
" \   aaMemberType aaMemberName;
" \   public aaClassName()<cr>
" \   {<cr>
" \       aaCode<cr>
" \   }<cr>
" \}
" \<esc>:cal S(3)<cr>
"
" It may be cases where vim will not indent like expected, like in the
" preceding snippet CL, then in these cases you should indent the code
" yourself using the "\<c-o>:set paste<cr>" line.
" ----------------------------------------------------------------------------------------------------------------
"
" History:
"
" Version 1.0
"
" 1. (Xaizek) for the let @/ = "aa" to simulate a search command like /aa but from code.
" 2. (Stephan Bittner) for the normal /aa to simulate a search command like /aa but from code.
"
" Version 1.1 
"
" 1. (Xaizek) Changed filetype of all files from `dos` to `unix`.  The thing is
"    that Vim-scripts with `dos` eol's work on Windows without issues, but
"    produce plenty of errors while they are loaded on *nix systems.
"    While Vim-scripts with `unix` eol's work on all platforms.
"
" 2. (Xaizek) Modified directory structure to look like this
"    ftplugin
"        cs_simplesnip.vim
"        html_simplesnip.vim
"        sql_simplesnip.vim
"    plugin
"        simpleSnip.vim
"
" 3. (Alexandre) Renamed snippets files to add an underscore in the filenames
"    example cs_simplesnip.vim, so they will not conflict with files already
"    there, but will still be loaded according to the filetype.
"
" 4. (Xaizek) Put `<buffer>` specifier to all :abb commands in the sample snippets,
"    so they are defined locally to each buffer.
"
" 5. (Xaizek) Added `<silent>` specifier to the :imap command in simpleSnip.vim to
"    prevent `:call ReplaceAll()` displaying on the statusbar when I leave insert mode.
"
" 6. (Xaizek) Change :abb to :iabb in the snippets files. Otherwise one will be surprised 
"    with results after typing name of one of snippets while being in the command-line mode.
"
" Version 1.2
"
" 1. (Xaizek) Provided the paste/nopaste solution to be able to
"    indent manually the snippets instead to have vim indent them manually.
"    In some cases, vim did not indent the lines as expected, so his
"    idea provides a way to manually indent the snippets.
"
" ----------------------------------------------------------------------------------------------------------------
"
" These three commands are there to make indentation work correctly for the snippets in their own filetypes. Deactivate 'autoindent' or 'smart indent' if activated. 
filetype on
filetype plugin on
filetype indent on

imap <silent> <esc> <esc>:call ReplaceAll()<cr>

" Called when the snippet is inserted
fu! S(n)
    " Simulate search like /aa (normal /aa may also be used). If you don't like the 'aa' prefix you may use another string.
    let @/ = "aa"
    " Search back the placeholders
    exe "normal ".a:n."N"
    " This is to reset the paste option used to allow manual indenting of the snippets
    if &paste == 1
        set nopaste
    endif
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
