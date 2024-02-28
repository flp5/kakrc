set-option global tabstop 2
set-option global indentwidth 0

hook global BufOpenFile .* %{ editorconfig-load }
hook global BufNewFile .* %{ editorconfig-load }
