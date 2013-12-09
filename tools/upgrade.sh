# Use colors, but only if connected to a terminal, and that terminal
# supports them.
if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
  RED="$(tput setaf 1)"
  GREEN="$(tput setaf 2)"
  YELLOW="$(tput setaf 3)"
  BLUE="$(tput setaf 4)"
  BOLD="$(tput bold)"
  NORMAL="$(tput sgr0)"
else
  RED=""
  GREEN=""
  YELLOW=""
  BLUE=""
  BOLD=""
  NORMAL=""
fi

printf "${BLUE}%s${NORMAL}\n" "Upgrading Oh My Zsh - Serdardalgic Edition:"
cd "$ZSH"

# serdar@boulder:~/GITHUB/oh-my-zsh^master
# % git remote -v
#   origin  git@github.com:serdardalgic/oh-my-zsh.git (fetch)
#   origin  git@github.com:serdardalgic/oh-my-zsh.git (push)
#   upstream        https://github.com/robbyrussell/oh-my-zsh.git (fetch)
#   upstream        https://github.com/robbyrussell/oh-my-zsh.git (push)
#
# % git branch
# * master
#   mymaster
#
# I sync upstream/master with origin/master
# Development is made in origin/mymaster

printf '%s' "$GREEN"
printf '%s\n' '         __                                     __   '
printf '%s\n' '  ____  / /_     ____ ___  __  __   ____  _____/ /_  '
printf '%s\n' ' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '
printf '%s\n' '/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '
printf '%s\n' '\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '
printf '%s\n' '                        /____/                       '
printf "${BLUE}%s\n"
printf 'git checkout master'
printf 'git pull upstream master'
printf 'git push origin master' ' or add --force'
printf 'git checkout mymaster'
printf 'git pull origin mymaster'
printf 'git rebase master'
printf 'git push origin mymaster' ' or add --force'
printf "${BLUE}${BOLD}%s${NORMAL}\n" "To keep up on the latest news and updates, follow us on twitter: https://twitter.com/ohmyzsh"
