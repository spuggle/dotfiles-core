set FNM_PATH "$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env --resolve-engines --use-on-cd --version-file-strategy=recursive | source
end
