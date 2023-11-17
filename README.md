## Neovim 操作

- nvim-telescope:

  - `; + r` : live_grep, search word in this file
  - `; + f` : find file
  - `s + f` : file browser
    - `/` : search file mode
    - `h` : go to parent folder (go to upper root)
    - `a` : create new file
    - `r` : rename file name
    - `d` : delete file
    - `c` : rename file and paste it at same path dir with copied file
    - `m` : move selected files or folders
    - `<Tab>` : select files or folders
  - `q`: quit telescope mode

- auto-complete:

  - `<Ctrl>e` : cancel suggestion
  - `<Ctrl><Enter>` : will auto complete suggestion and enter into new line
  - `<Enter>` : auto complete selected suggestion

- markdown-preview:

  - `<Space>cp` : open markdown preview in browser

- inc-rename:

  - `<Space>cr` : rename symbol and will auto rename all same symbol in the file

- comment:

  - `gc` : change selected codes into comments or back to codes again
