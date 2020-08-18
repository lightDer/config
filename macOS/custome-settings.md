# Custom settings

## 開啓鍵盤長按連續輸入功能

```
defaults write NSGlobalDomain ApplePressAndHoldEnabled -boolean false
defaults write -g ApplePressAndHoldEnabled -bool false
```

要重新登出或重開機才能生效

## No dock delay

```
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock
```

0 in delay means that there is no delay at all, and 0.4 is how long the animation will take.
To back into default settings just do the same with this code:

```
defaults delete com.apple.dock autohide-delay
defaults delete com.apple.dock autohide-time-modifier
killall Dock
```
