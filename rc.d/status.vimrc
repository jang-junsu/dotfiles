set laststatus=2

function! StatuslineGit()
	let l:branchname = Gitbranch()
	return strlen(l:branchname) > 0? '  '.l:branchname.'  ':''

set statusline+=%{StatuslineGit()}
set statusline+=\ %f
