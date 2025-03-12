# thanks Evan Chen, fish docs and Arch Wiki contributors

# PROMPTS {{{

set fish_color_cwd CCA700
set fish_color_name 44FFFF
set fish_color_host 11DD33
set fish_color_error FF0000
set fish_color_greeting FF3333
set fish_color_determination yellow
set fish_color_date 888888
set fish_color_arrows 00CCA7

set fish_prompt_pwd_dir_length 2

# Fish git prompt
set __fish_git_prompt_showdirtystate 1
set __fish_git_prompt_showstashstate 1
set __fish_git_prompt_showuntrackedfiles 1
set __fish_git_prompt_showcolorhints 1
set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_color 9CFEFA
set __fish_git_prompt_color_branch 00CCA7
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

function fish_greeting
    set_color --italics $fish_color_greeting
    printf "Hello "
    set_color --bold $fish_color_name
    printf $USER
    set_color normal
    set_color --italics $fish_color_host
    printf @
    printf (hostname)
    set_color $fish_color_greeting
    printf "! You are filled with "
    set_color --bold $fish_color_determination
    printf determination
    set_color normal
    set_color --italics $fish_color_greeting
    printf ".\n"

    if test (pwd) = "$HOME"
        archey3 --config ~/dotfiles/archey3.cfg --color=green 2>/dev/null
    end

    set_color --italics $fish_color_date
    printf "It is "
    printf (date +'%a %d %b %Y, %R %Z')
    printf ".\n"
    set_color normal
end

function fish_prompt
    set last_status $status
    if set -q SUDO_USER
        or set -q SSH_TTY
        set_color --italics yellow
        printf (prompt_pwd)
    else
        set_color --italics $fish_color_cwd
        printf (prompt_pwd)
    end
    set_color normal
    if not test $last_status -eq 0
        set_color $fish_color_error
        printf ' ['
        printf $last_status
        printf ']'
    end
    if set -q SUDO_USER
        or set -q SSH_TTY
        printf ' '
        set_color -b blue yellow --bold
        printf '('
        printf $USER
        printf ')'
        set_color normal
        printf ' '
    else
        set_color --bold $fish_color_arrows
        printf ' >> '
    end
    set_color normal
end

function fish_right_prompt
    set_color normal
    printf '%s ' (__fish_git_prompt)
    set_color normal
    set_color $fish_color_date
    printf "["
    printf (date +'%R')
    printf "]"
end

# }}}

# fish vi key bindings {{{
fish_vi_key_bindings
bind -M default \ct accept-autosuggestion
bind -M insert \ct accept-autosuggestion
function fish_mode_prompt
    if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        switch $fish_bind_mode
            case default
                set_color --bold --background red white
                echo N
            case insert
                set_color --bold --background green white
                echo I
            case replace_one
                set_color --bold --background green white
                echo R
            case replace
                set_color --bold --background cyan white
                echo R
            case visual
                set_color --bold --background magenta white
                echo V
        end
        set_color normal
        echo -n ' '
    end
end
# }}}

# Exports {{{
export SHELL='/usr/bin/fish'
export EDITOR='vim'
if test -f /usr/bin/zathura
    export PDFVIEWER='zathura'
end
# }}}

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# vim: fdm=marker


