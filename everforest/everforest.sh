#!/usr/bin/env zsh

# If any command fails this stops the script immediately
set -e

THEME_DIR="$HOME/tools/theme-switcher/everforest"
VSCODE_SETTINGS="$HOME/Library/Application Support/Code/User/settings.json"
VSCODE_THEME="Everforest Pro Dark"
PATH_TO_WALLPAPER="$HOME/wallpapers/muci-ocsi-everforest.png"

# SKETCHYBAR THEME
echo "Copying sketchybar styles"
cp -rf "$THEME_DIR/sketchybar/." "$HOME/.config/sketchybar/"

# WEZTERM THEME
echo "Copying wezterm styles"
cp "$THEME_DIR/.wezterm.lua" "$HOME"

# VSCODE THEME
echo "Changing vscode theme"

sed -i '' \
  "s/\"workbench.colorTheme\": *\"[^\"]*\"/\"workbench.colorTheme\": \"$VSCODE_THEME\"/" \
  "$VSCODE_SETTINGS"

jq '.["workbench.colorCustomizations"] = {}' "$VSCODE_SETTINGS" >"$VSCODE_SETTINGS.tmp" &&
  mv "$VSCODE_SETTINGS.tmp" "$VSCODE_SETTINGS"

# NEOVIM THEME
echo "Copying nvim styles"
cat "$THEME_DIR/colorthemes.lua" >"$HOME/.config/nvim/lua/plugins/colorthemes.lua"

# NOTIFY NEOVIM
pgrep -x nvim | while IFS= read -r pid; do
  kill -USR1 "$pid"
done

# POWERLEVEL10K THEME
# > indicator when commands succeeds
sed -i '' '/^[[:space:]]*typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=/s/=[^ ]*/="#C36A6D"/' "$HOME/.p10k.zsh"
# path
sed -i '' '/^[[:space:]]*typeset -g POWERLEVEL9K_DIR_FOREGROUND=/s/=[^ ]*/="#BBA272"/' "$HOME/.p10k.zsh"
sed -i '' '/^[[:space:]]*typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=/s/=[^ ]*/="#BBA272"/' "$HOME/.p10k.zsh"

# RELOAD SKETCHYBAR
echo "Reloading sketchybar"
sketchybar --reload

# SET WALLPAPER
osascript -e "tell application \"System Events\" to set picture of every desktop to \"$PATH_TO_WALLPAPER\""

# TODO_APP THEME
sed -i '' '/^[[:space:]]*alias dod=/s|TEXTUAL_THEME=[^[:space:]"]*|TEXTUAL_THEME=everforest|' ~/.zshrc
