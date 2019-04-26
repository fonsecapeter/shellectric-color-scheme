# Shellectric Color-Scheme

Easy on the eyes, retro colors inspired by 70's design. 'Nuff said.

Check out the [atom](https://atom.io/) syntax theme [here](https://github.com/fonsecapeter/shellectric-syntax) if atom's your cup of tea, and the chrome theme [here](https://github.com/fonsecapeter/shellectric-chrome-theme).

![shellectric ruby](/media/shellectric-hyper.png "shellectric-hyper.png")
![shellectric ruby](/media/shellectric-vim.png "shellectric-vim.png")

> In case you're wondering, that font is [Brass Mono](https://github.com/fonsecapeter/brass_mono).

## Themes

### Terminals

- [Hyper](https://hyper.is/) `hyper_shellectric.js`
  - Copy into your own `~/.hyper.js`
- [GNOME Terminal](https://help.gnome.org/users/gnome-terminal/stable/) `shellectric-gnome-term-profile.dconf`
  - Import with `dconf load /org/gnome/terminal/ < shellectric-gnome-term-profile.dconf`
  - Manually change to default in `Terminal` > `Preferences`
- [Konsole](https://konsole.kde.org/): `Shellectric.colorscheme`
  - Import by copying to  `~/.local/share/konsole/Shellectric.colorscheme`
- [iTerm2](https://www.iterm2.com/): `Shellectric.itermcolors`
  - Manual import `Profiles` > `Colors` > `Color Presets...` > `Import`
- OSX Default: `Shellectric.terminal`
  - Manual import `Profiles` > ⚙️ > `Import`

### Misc

- [Slack](https://slack.com/): `shellectric_slack.txt`
  - Preferences > Side Bar > Theme > Custom > Copy/Paste
- [Zsh](https://github.com/zsh-users/zsh-syntax-highlighting): `shellectric_zsh_regexp_syntax.zsh`
  - Pase or source into `~/.zshrc`
- [IPython](https://ipython.org/): `shellectric_ipython_pygments.py`
- [Pygments](http://pygments.org/): `shellectric_pygments.py`

### Web Browsers

- [Chrome](https://www.google.com/chrome/): [Shellectric Chrome Theme](https://github.com/fonsecapeter/shellectric-chrome-theme)
- [JSONView Extension](https://jsonview.com/): `shellectric_json_view.css`

### Editors

- [Atom](https://atom.io/): [shellectric-syntax](https://github.com/fonsecapeter/shellectric-syntax)
  - Install through apm as any other theme
- [Vim Airline](https://github.com/vim-airline/vim-airline): `shellectric_airline_theme.vim`
  - Use vundle
  - Move to `~/.vim/bundle/vim-airline/autoload/airline/themes/shellectric.vim`
  - Add contents of `shellectric_vimrc.vim` to vimrc
- [Vim](https://www.vim.org/): On its way... [noctu](https://github.com/noahfrederick/vim-noctu) is very close with correct terminal colors
