# paste or source into ~/.zshrc
# and make sure to have zsh-syntax-highlighting in plugins if oh-my-zsh
# Taken from https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/highlighters/regexp/regexp-highlighter.zsh
# ---------------------------------------------------------------
# List of keyword and color pairs.
typeset -gA ZSH_HIGHLIGHT_REGEXP

# Whether the pattern highlighter should be called or not.
_zsh_highlight_highlighter_regexp_predicate()
{
  _zsh_highlight_buffer_modified
}

# Pattern syntax highlighting function.
_zsh_highlight_highlighter_regexp_paint()
{
  setopt localoptions extendedglob
  local pattern
  for pattern in ${(k)ZSH_HIGHLIGHT_REGEXP}; do
    _zsh_highlight_regexp_highlighter_loop "$BUFFER" "$pattern"
  done
}

_zsh_highlight_regexp_highlighter_loop()
{
  local buf="$1" pat="$2"
  integer OFFSET=0
  local MATCH; integer MBEGIN MEND
  local -a match mbegin mend
  while true; do
    [[ "$buf" =~ "$pat" ]] || return;
    region_highlight+=("$((MBEGIN - 1 + OFFSET)) $((MEND + OFFSET)) $ZSH_HIGHLIGHT_REGEXP[$pat]")
    buf="$buf[$(($MEND+1)),-1]"
    OFFSET=$((MEND+OFFSET));
  done
}
# ---------------------------------------------------------------
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main regexp)

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=green'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'
ZSH_HIGHLIGHT_STYLES[function]='fg=blue'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=white'
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[back-single-quoted-argument]='fg=red,bold'  # '\n'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=magenta'  # "\n"

typeset -A ZSH_HIGHLIGHT_REGEXP
ZSH_HIGHLIGHT_REGEXP+=('[$][{]?[a-zA-Z0-9_-]*[}]? ' 'fg=yellow,bold')
