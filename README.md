# Dotfiles

Dotfiles personnels pour une installation Arch/Wayland basée sur Hyprland, gérés avec Git et GNU Stow.[^3][^4]

Les paquets suivants sont disponibles:

- `nvim` : configuration Neovim (`~/.config/nvim`)[^5]
- `starship` : prompt Starship (`~/.config/starship.toml` ou équivalent)[^6][^7]
- `hyprland` : configuration Hyprland (`~/.config/hypr`)[^8][^3]
- `waybar` : configuration Waybar (`~/.config/waybar`)[^7][^6]
- `ghostty` : configuration Ghostty (`~/.config/ghostty`)[^9]


## Prérequis

- Git
- GNU Stow (`sudo pacman -S stow` sur Arch)[^4][^10]


## Installation

Cloner le dépôt dans le home (recommandé):

```bash
git clone git@github.com:<user>/<repo>.git ~/.dotfiles
cd ~/.dotfiles
```

Par défaut, ce dépôt est conçu pour être utilisé avec `~` comme cible.[^2][^3]

## Structure

Le dépôt suit la structure attendue par stow: chaque “paquet” correspond à un sous-répertoire.[^11][^1]

Exemple:

- `nvim/.config/nvim/*`
- `starship/.config/starship.toml`
- `hyprland/.config/hypr/*`
- `waybar/.config/waybar/*`
- `ghostty/.config/ghostty/*`[^1][^9]

Stow va créer des liens symboliques depuis ces chemins vers le `$HOME` correspondant.

## Utilisation de base de Stow

Depuis `~/.dotfiles`:

- Stower un paquet:

```bash
stow nvim
stow starship
stow hyprland
stow waybar
stow ghostty
```

Ces commandes vont créer les symlinks dans ton `$HOME` (`~`).[^2][^4]

- Stower plusieurs paquets d’un coup:

```bash
stow nvim starship hyprland waybar ghostty
```

- Déstower (supprimer les symlinks) un paquet:

```bash
stow -D nvim
stow -D waybar
```

La commande `-D` supprime uniquement les liens, pas les fichiers dans le repo.[^10][^1]

## Cas d’erreurs (fichiers existants)

Si un fichier existe déjà dans `$HOME`, stow refusera de le remplacer.[^3][^10]

Dans ce cas:

- Sauvegarder ou supprimer l’ancien fichier dans `$HOME`.
- Relancer la commande `stow <paquet>`.

Il est conseillé de nettoyer ou renommer les anciennes configs (`.config/...old`) avant de stower ce dépôt.[^11][^2]

## Mise à jour

Pour mettre à jour les dotfiles:

```bash
cd ~/.dotfiles
git pull
stow nvim starship hyprland waybar ghostty
```

Pour committer tes changements:

```bash
cd ~/.dotfiles
git status
git add .
git commit -m "Update dotfiles"
git push
```


