# paste into ~/.ipython/profile_default/ipython_config.py
from pygments.style import Style
from pygments.token import (
    Keyword, Name, Comment, String, Error,
    Number, Operator, Text, Literal, Token
)


class Shellectric(Style):
    default_style = ""
    styles = {
        Text:                   '#ansifuchsia',
        Comment:                '#ansilightgray',
        Keyword:                '#ansigreen',
        Keyword.Constant:       '#ansiturquoise',  # constant
        Keyword.Namespace:      '#ansilightgray',
        Keyword.Pseudo:         '#ansilightgray',
        Name.Builtin.Pseudo:    '#ansilightgray',  # self
        Name.Function:          '#ansiturquoise',
        Name.Class:             '#ansiturquoise',
        Name.Exception:         '#ansiturquoise',
        Name.Decorator:         '#ansiturquoise',
        String:                 '#ansired',
        Literal:                 '#ansired',
        Number:                 '#ansiblue',
        Operator:               '#ansilightgray',
        Error:                  '#ansiyellow',
    }


overrides = {
    Token.Prompt: '#ansibrown',
    Token.PromptNum: '#ansiblue',
    Token.OutPrompt: '#ansibrown',
    Token.OutPromptNum: '#ansiblue',
    Token.Menu.Completions.Completion: '#ansiyellow',
    Token.Menu.Completions.Completion.Current: '#ansiyellow',
    Token.MatchingBracket.Other: '#ansiyellow',
}


c.TerminalInteractiveShell.highlighting_style = Shellectric
c.TerminalInteractiveShell.highlighting_style_overrides = overrides
## Override highlighting format for specific tokens
#c.TerminalInteractiveShell.highlighting_style_overrides = {}

## Enable mouse support in the prompt
#c.TerminalInteractiveShell.mouse_support = False

## Class used to generate Prompt token for prompt_toolkit
#c.TerminalInteractiveShell.prompts_class = 'IPython.terminal.prompts.Prompts'
from IPython.terminal.prompts import Prompts, Token


class MyPrompt(Prompts):
    def in_prompt_tokens(self, cli=None):
        return [(Token.Prompt, ' > ')]

    def out_prompt_tokens(self, cli=None):
        return [(Token.Prompt, ' < ')]

    # def continuation_prompt_tokens(self, cli=None):
    def continuation_prompt_tokens(self, *args, **kwargs):
        return [(Token.Prompt, ' * ')]

    def rewrite_prompt_tokens(self, cli=None):
        return [(Token.Prompt, ' - ')]


c.TerminalInteractiveShell.prompts_class = MyPrompt
