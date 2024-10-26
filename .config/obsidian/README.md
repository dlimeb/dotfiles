# Obsidian README

These CSS files are my custom Obsidian theme.

They represent an attempt to make Obsidian feel more at home on MacOS and iOS. There are many good Obsidian community themes, but I always found a few things a bit unsatisfying. I originally started modifying/overriding [obsidian-minimal](https://github.com/kepano/obsidian-minimal) but eventually found it easier to just home roll it from scratch. I also wanted a bit more control over some plugins.

I change things periodically to keep it fresh. The latest iteration (as of Oct 2024) borrows heavily from the styling of [iA Writer](https://ia.net/writer).

## Notes

In practice these files have been written via accumulating random fiddling over a long period of time. There is some organization but this is not the most elegant CSS I've ever written and I'm sure many things could be improved, but I'm not interested in chasing that any further.

Note also I'm in a halfway state wrt where some styling things are set. For example, I define all theme colours here in CSS (so changing Obsidian's Accent color has no effect) but I set font typefaces and sizing via Obsidian's settings panel.

## Installation

Custom CSS snippets need to be in your Obsidian vault at `<path to vault>/.obsidian/snippets`. Then see Settings > Appearance and scroll to the bottom to turn them on. (You may need to hit the refresh button to see them.)

Note though that these source of truth files are here in this repo. I'm not worried about losing them (Obsidian vault is in iCloud for now) but I do want them in git, as occasionally I want to roll back something. (I know [obsidian-git](https://github.com/Vinzent03/obsidian-git) exists, but I don't want to get into that right now.)

Originally I thought I could replicate what [Stow](https://www.gnu.org/software/stow/) does, and create symlinks from these files to my vault.

```zsh
cd <path to vault>/.obsidian/snippets
ln -s ~/code/dotfiles/obsidian/Content.CSS
```

This works, but (a) changes to the source file are not reflected in Obsidian right away, so you can't "live edit" and instead need to restart Obsidian to see changes; and (b) this doesn't work on mobile, because obviously the source files are not on that device.

So, I'll have to satisfice with the following installation workflow:

1. Copy (not symlink) these CSS files to the vault.
2. Make any desired changes to CSS on those files.
3. Replace the files in this repo with those updated ones.
4. Commit and push.
