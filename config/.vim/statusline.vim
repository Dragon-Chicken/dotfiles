function Mystatusline()
  let l:retline = ""
  if g:statusline_winid == win_getid()
    let l:retline = l:retline . "%#StatusLineInv# %f %#StatusLine# "
    let l:retline = l:retline . "%#StatusLineDiffAdd#%{w:gitdiffadd} %#StatusLineDiffSub#%{w:gitdiffsub}%#StatusLine#"
    let l:retline = l:retline . "%<%="
    let l:retline = l:retline . "%(%y%m%r%) "
    let l:retline = l:retline . "%b "
    let l:retline = l:retline . "%P "
    let l:retline = l:retline . "%#StatusLineInv# %l:%c "
  else
    let l:retline = l:retline . " %f "
    let l:retline = l:retline . "%<%="
    let l:retline = l:retline . "%(%y%m%r%)"
    let l:retline = l:retline . " %l:%c "
  endif
  return l:retline
endfunction
