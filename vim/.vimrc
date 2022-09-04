"==============================================================================
"set autodent
"Plugin and setup
"==============================================================================

"Enable filetype detection for plugins and indentation options
"filetype plugin indent on

"Reload a file when it is changes from the outside
set autoread

"Write the file when we leave the buffer
"set autowrite

"Disable backups, we have source control for that
"set nobackup

"Force encoding to utf-8, for systems where this is not the default
set encoding=utf-8

"Disable swapfiles too
set noswapfile

"Hide buffers instead of closing them
set hidden

"Set the time (millisec) spent idle until various actions occur
set updatetime=500

"For some stupid reason, vim requires the term to begin with "xterm"
"so the auto detect "rxvt-unicode-256color" doesn't work
"set term=xterm-256color

"==============================================================================
"User interface
"==============================================================================

"Make backspace behave as expected
set backspace=eol,indent,start

"Set the minimal amount of lines under and above the cursor
set scrolloff=5

"Show current mode
set showmode

"Show command being executed
set showcmd

"Show line
set number

"Enhance command line completion
set wildmenu

"Set completion behavior, see :help wildmode for details
set wildmode=longest:full,list:full

"Diable bell completely
set visualbell
set t_vb=

"Color the column after textwidth, usually the 80th
if version >= 703
	set colorcolumn=+1
endif

"Display whitespaces characters
"set list
"set listchars=tab:>-,eol:¬,trail:\ ,nbsp:¤

"Enable syntax highlighting
syntax on

"Allow mous use in vim
set mouse=a

"Briefly show matchin braces, parens, etc
set showmatch

"Enable line wrapping
set wrap

"Wrap on column 80
set textwidth=79

"Disable preview window on completion
set completeopt=longest,menuone

"Hightlight current line
"set cursorline

"Disable error bell
set noerrorbells

"Set title to filename
set title

"set confirm
let g:user42='vnaud'
let g:mail42='vnaud@student.42angouleme.fr'


"==============================================================================
"Search options
"==============================================================================

"Ignore case on search
set ignorecase

"Ignore case unless there is an uppercase letter in the pattern
set smartcase

"Move cursor to the matched string
set incsearch

"Don't highlight matched strings
set nohlsearch

"==============================================================================
"Identation options
"==============================================================================

"Set length of tab
set tabstop=4

"The number of spaces inserted/removed when < or >
set shiftwidth=4

"Set basic indenting
set autoindent

"==============================================================================
"Statusline setup
"==============================================================================

"Set personnalized status line
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

"Always show status line
set laststatus=2

"==============================================================================
"Function comment in C files
"==============================================================================
ia comfun /*<lf>* -------------------------<lf>* Function: <lf>* ------------------------- <lf>*<lf>*<lf>*<lf>* Params:<lf>*<lf>*<lf>* Returns:<lf>*<lf>*<lf>* -------------------------<lf>*/<ESC>

"==============================================================================
"hpp files in C++
"==============================================================================
function!	HeaderCPP()
	let cname = expand("%:t:r")
	let name = toupper(expand("%:t:r"))
	call append(0, join(["#ifndef __", name, "_HPP__"], ''))
	call append(1, join(["# define __", name, "_HPP__"], ''))
	call append(2, "")
	call append(3, "# include <iostream>")
	call append(4, "")
	call append(5, join(["class	", cname, ""], ''))
	call append(6, "{")
	call append(7, "	public:")
	call append(8, join(["		", cname, "();"], ''))
	call append(9, join(["		", cname, "(const ", cname, " &",tolower(cname), ");"], ''))
	call append(10, join(["		~", cname, "();"], ''))
	call append(11, join(["		", cname, " & operator = (const ", cname, " &",tolower(cname), ");"], ''))
	call append(12, "	private:")
	call append(13, "};")
	call append(14, "")
	call append(15, "#endif")
endfunction
autocmd BufNewFile *.hpp call HeaderCPP()

"==============================================================================
"cpp files in C++
"==============================================================================
function!	FilesCPP()
	let name = expand("%:t:r")
	call append(3, join(["# include \"", name, ".hpp\""], ''))
	call append(4, "")
	call append(8, join([name, "::", name, "()"], ''))
	call append(4, "{")
	call append(4, "")
	call append(4, "}")
	call append(4, "")
	call append(9, join([name, "::", name, "(const ", name, " &",tolower(name), ")"], ''))
	call append(4, "{")
	call append(4, "")
	call append(4, "}")
	call append(4, "")
	call append(10, join([name, "::~", name, "()"], ''))
	call append(4, "{")
	call append(4, "")
	call append(4, "}")
	call append(4, "")
	call append(11, join([name, "::", name, "& operator = (const ", name, " &",tolower(name), ")"], ''))
	call append(4, "{")
	call append(4, "")
	call append(4, "}")
endfunction
autocmd BufNewFile *.cpp call FilesCPP()
