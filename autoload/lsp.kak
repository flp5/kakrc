eval %sh{kak-lsp -c "$kak_config/kak-lsp.toml" --kakoune -s $kak_session}
hook global WinSetOption filetype=(c|cpp|go|zig|rust|elvish|lua) %{
    lsp-enable-window
}
