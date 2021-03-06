" ==========================================
" Snippets and completitions
" ==========================================

set wildmenu                            " Enable Wildmenu
set wildmode=longest:full,full          " Configure Wildmenu"

" Plugin: Sensible
"
" About: Set of defaults: backspace through anything in insert mode, start
"        searching before pressing enter, always show at least one line
"        above/below the cursor, autoload file changes, etc.
" Usage: Works automatically

Plug 'tpope/vim-sensible'

" ------------------------------------------------------------------------------

" Plugin: AutoPairs
"
" About: Insert or delete brackets, parens, quotes in pair
" Usage: Works automatically

Plug 'jiangmiao/auto-pairs'

" ------------------------------------------------------------------------------

" Plugin: Ctrl P
"
" About: Fuzzy file, buffer, mru, tag, etc finder
" Usage: Press Ctrl + p to search in files, buffers and mru files at the same time,
"        press Ctrl + j to move above and Ctrl + k to move down.
"        Doesn't search in .git folder and added to .gitignore files

Plug 'kien/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_use_caching = 1

" ------------------------------------------------------------------------------

" Plugin: EasyMotion
"
" About: Provide a much simpler way to use some motions
" Usage: Press double ` to trigger the word motion, press `2 to perform a
"        2-character search, press `h or `l to move to line or `j `k to move
"        up or down

Plug 'easymotion/vim-easymotion'

map ' <Plug>(easymotion-prefix)

nmap `` <Plug>(easymotion-w)
nmap `2 <Plug>(easymotion-s2)

map `l <Plug>(easymotion-lineforward)
map `j <Plug>(easymotion-j)
map `k <Plug>(easymotion-k)
map `h <Plug>(easymotion-linebackward)

" ------------------------------------------------------------------------------

" Plugin: Nerd Commenter
"
" About: Make comments easy
" Usage: Press Ctrl + / to toggle comment, also can use Leader + cc to make
"        comment, Leader + cs to make sexy comments, Leader + cu to uncomment
"        and Leader + cy to yank and comment

Plug 'scrooloose/nerdcommenter'

let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
"noremap <c-/> :call NERDComment(0, "Toggle")<cr>
noremap <C-_> :call NERDComment(0, "Toggle")<cr>

" ------------------------------------------------------------------------------

"Multicursor

Plug 'terryma/vim-multiple-cursors'

" About: Allow to use multiple selection feature
" Usage:

" ------------------------------------------------------------------------------

" Plugin: TextObj CSS
"
" About: Manage text objects in CSS
" Usage: Press vic to visually select inner CSS and vac to visually select
"        entire rules. To change inner CSS press cic, to change entire press
"        cac. To remove inner CSS press dic, to remove entire CSS press dac

Plug 'kana/vim-textobj-user'
Plug 'jasonlong/vim-textobj-css'

" ------------------------------------------------------------------------------

" Plugin: Move
"
" About: Move lines and selections up and down
" Usage: Press Ctrl + k or Ctrl + j to move current line or selection up or
"        down

Plug 'matze/vim-move'

let g:move_key_modifier = 'C'

" ------------------------------------------------------------------------------

" Plugin: Surround
"
" About: Provides mappings to easily delete, change and add such surroundings in
"        pairs
" Usage: Press cs"' inside "Hello" to change it to 'Hello', press cs'<q> to
"        change it to <q>Hello</q>. Press ds" inside "Hello" to remove quotes.
"        Press <Space>} to add some space (use <Space>} instead of <Space{ for
"        no space). Press a capital V (for linewise visual mode) followed by
"        S<p class="name"> to make <p class="name">Hello</p>

Plug 'tpope/vim-surround'

" ------------------------------------------------------------------------------

" Plugin: JSDoc
"
" About: Generate JSDoc to JavaScript code
" Usage: Type :JsDoc or press Ctrl + l to insert JsDoc

Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }

nmap <silent> <C-l> <Plug>(jsdoc)

" ------------------------------------------------------------------------------

" Plugin: Clever F
"
" About: Extends f, F, t and T mappings for more convenience
" Usage: Works automatically

Plug 'rhysd/clever-f.vim'

let g:clever_f_ignore_case = 1

" ------------------------------------------------------------------------------

" Plugin: Node
"
" About: Open require files from JavaScript files
" Usage: Press gf on require("*") to open the file you need

Plug 'moll/vim-node'

" ------------------------------------------------------------------------------

" Plugin: Snipmate
"
" About: Allows to use code snippets
" Usage: Snippets are stored in the "snippets" directory. For using snippets
"        enter snippet and press Tab button

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'tomtom/tlib_vim'

let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['javascript'] = 'javascript,jsx,es6'
let g:snipMate.scope_aliases['css'] = 'css,scss,less'

" ------------------------------------------------------------------------------

" Plugin: CloseTag
"
" About: Autoclosing HTML tags
" Usage: Works automatically

Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.xhtml,*.php,*.js,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1

" ------------------------------------------------------------------------------

" Plugin: TextObj Entire
"
" About: Provide to using text objects for entire buffer
" Usage: Provides two text object: ae - entire content of the current buffer,
"        ie - the same as ae but without including leading and trailing empty
"        lines. For example dae - remove all buffer content

Plug 'kana/vim-textobj-entire'

" ------------------------------------------------------------------------------

" Plugin: Ack
"
" About: Searching plain-text data
" Usage: :Ack [options] {pattern} [{directories}] in command line mode. If you
"        don't want to jump to the first result automatically use :Ack!.

Plug 'mileszs/ack.vim'
let g:ackprg = 'ack -s -H --nogroup --column'

" ------------------------------------------------------------------------------

" Plugin: Repeat
"
" About: Enable repeating supported plugin maps with "."
" Usage: Works automatically

Plug 'tpope/vim-repeat'

" ------------------------------------------------------------------------------

" Plugin: SuperTab
"
" About: Allows you to use <Tab> for all your insert completion needs
" Usage: Works automatically

Plug 'ervandew/supertab'

" ------------------------------------------------------------------------------

" Plugin: SortMotion
"
" About: This plugin provides the ability to sort in Vim using text objects and
"        motions.
" Usage: gs2j => Sort down two lines (current + 2 below); gsip => Sort the
"        current paragraph; gsii => Sort the current indentation level (requires
"        text-obj-indent plugin)

Plug 'christoomey/vim-sort-motion'

" ------------------------------------------------------------------------------

" Plugin: Prettier
"
" About: Format code
" Usage: Works automatically

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
