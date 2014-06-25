# KIVA - a stylistic fork of Steve Eley's CRUNCH.
#
# This theme assumes you do most of your oh-my-zsh'ed "colorful" work at a single machine,
# and eschews the standard space-consuming user and hostname info.  Instead, only the
# things that vary in my own workflow are shown:
#
# * The time (not the date)
# * The RVM version and gemset (omitting the 'ruby' name if it's MRI)
# * The current directory
# * The Git branch and its 'dirty' state
#
# Colors are at the top so you can mess with those separately if you like.
# For the most part I stuck with Dallas's.

KIVA_BRACKET_COLOR="%{$fg[white]%}"
KIVA_TIME_COLOR="%{$fg[yellow]%}"
KIVA_RVM_COLOR="%{$fg[magenta]%}"
KIVA_DIR_COLOR="%{$fg[cyan]%}"
KIVA_GIT_BRANCH_COLOR="%{$fg[green]%}"
KIVA_GIT_CLEAN_COLOR="%{$fg[green]%}"
KIVA_GIT_DIRTY_COLOR="%{$fg[red]%}"

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$KIVA_BRACKET_COLOR:$KIVA_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $KIVA_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $KIVA_GIT_DIRTY_COLOR✗"

# Our elements:
KIVA_TIME_="$KIVA_BRACKET_COLOR{$KIVA_TIME_COLOR%T$KIVA_BRACKET_COLOR}%{$reset_color%}"
if which rvm-prompt &> /dev/null; then
  KIVA_RVM_="$KIVA_BRACKET_COLOR"["$KIVA_RVM_COLOR\${\$(~/.rvm/bin/rvm-prompt i v)#ruby-}$KIVA_BRACKET_COLOR"]"%{$reset_color%}"
else
  if which rbenv &> /dev/null; then
    KIVA_RVM_="$KIVA_BRACKET_COLOR"["$KIVA_RVM_COLOR\${\$(rbenv version | sed -e 's/ (set.*$//' -e 's/^ruby-//')}$KIVA_BRACKET_COLOR"]"%{$reset_color%}"
  fi
fi
KIVA_DIR_="$KIVA_DIR_COLOR%~\$(git_prompt_info) "
KIVA_PROMPT="$KIVA_BRACKET_COLOR${ret_status} "

# Put it all together!
PROMPT="$KIVA_TIME_$KIVA_RVM_$KIVA_DIR_$KIVA_PROMPT%{$reset_color%}"
