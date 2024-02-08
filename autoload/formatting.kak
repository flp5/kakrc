set-option global tabstop 2
set-option global indentwidth 2

hook global BufOpenFile .* %{ editorconfig-load }
hook global BufNewFile .* %{ editorconfig-load }
