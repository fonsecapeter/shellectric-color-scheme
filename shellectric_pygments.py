# requires pygments
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
