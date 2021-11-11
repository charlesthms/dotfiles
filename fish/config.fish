# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# opam configuration
source /home/hypnos/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
