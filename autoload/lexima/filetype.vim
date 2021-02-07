let s:save_cpo = &cpo
set cpo&vim

let s:is_context_filetype_available = globpath(&runtimepath, 'autoload/context_filetype.vim') !=# ''

function! lexima#filetype#detect()
  if s:is_context_filetype_available
    return context_filetype#get_filetype()
  else
    return &filetype
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
