require('notepad.notepad').setup {
  target_file = 'todo.md',
  global_file = vim.fn.expand '$HOME/notes/todo.md',
}
