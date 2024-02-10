colorscheme kanagawa

set-option global scrolloff 5,1

add-highlighter global/ number-lines -relative -hlcursor
add-highlighter global/ wrap

add-highlighter global/ regex \b(TODO|FIXME|XXX|NOTE|HACK|DOC)\b 0:+rb

hook global WinSetOption filetype=(c|cpp|go|zig|rust|elvish|lua) %{
  lsp-inlay-hints-enable global
  lsp-inlay-diagnostics-enable global
  hook window -group semantic-tokens BufReload .* lsp-semantic-tokens
  hook window -group semantic-tokens NormalIdle .* lsp-semantic-tokens
  hook window -group semantic-tokens InsertIdle .* lsp-semantic-tokens
  hook -once -always window WinSetOption filetype=.* %{
    remove-hooks window semantic-tokens
  }
}
