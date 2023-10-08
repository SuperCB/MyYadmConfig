function _fzf_wrapper --description "Prepares some environment variables before executing fzf."
    # Make sure fzf uses fish to execute preview commands, some of which
    # are autoloaded fish functions so don't exist in other shells.
    # Use --function so that it doesn't clobber SHELL outside this function.
    set -f --export SHELL (command --search fish)

    # If FZF_DEFAULT_OPTS is not set, then set some sane defaults.
    # See https://github.com/junegunn/fzf#environment-variables
    if not set --query FZF_DEFAULT_OPTS
        # cycle allows jumping between the first and last results, making scrolling faster
        # layout=reverse lists results top to bottom, mimicking the familiar layouts of git log, history, and env
        # border shows where the fzf window begins and ends
        # height=90% leaves space to see the current command and some scrollback, maintaining context of work
        # preview-window=wrap wraps long lines in the preview window, making reading easier
        # marker=* makes the multi-select marker more distinguishable from the pointer (since both default to >)
        set --export FZF_DEFAULT_OPTS '--color=hl:#f391a9,fg:#90d7ec,hl+:#f391a9,fg+:#ffe600 --cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*"'
    end

    fzf $argv
end
