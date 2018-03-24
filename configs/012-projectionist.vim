let g:projectionist_heuristics = {
      \ '*': {
      \   '*.component.ts': {
      \     'alternate': '{}.component.html',
      \     'type': 'source'
      \   },
      \   '*.component.html': {
      \     'alternate': '{}.component.ts',
      \     'type': 'template'
      \   }
      \}
    \}

