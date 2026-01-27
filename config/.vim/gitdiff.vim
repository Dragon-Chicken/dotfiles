let w:gitdifflist = system("git diff --numstat " . expand('%:b'))
let w:gitdiffadd = ""
let w:gitdiffsub = ""

function Gitchangebuf()
  let w:gitdifflist = system("git diff --numstat " . expand('%:b'))
  call Gitdifftext()
endfunction

function Gitdifftext()
  if  w:gitdifflist == "" || w:gitdifflist->split(':')[0] == "fatal" || w:gitdifflist->split(':')[0] == "warning"
    let w:gitdiffadd = ""
    let w:gitdiffsub = ""
    "echo "fail"
  else
    let w:gitdiffadd = "+" . w:gitdifflist->split('\t', 1)[0]
    let w:gitdiffsub = "-" . w:gitdifflist->split('\t', 1)[1]
  endif
endfunction

autocmd BufEnter * call Gitchangebuf()
autocmd BufWritePost * call Gitdifftext()
