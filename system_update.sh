#update pacman mirrors
sudo pacman-mirrors -g

#update keyring
sudo pacman -Sy archlinux-keyring manjaro-keyring
sudo pacman-key --init
sudo pacman-key --populate archlinux manjaro
sudo pacman-key --refresh-keys

#remove unused packages (orphans)
sudo pacman -Rsn $(pacman -Qdtq)

#safely remove old packages
sudo paccache -rvk3

#remove all the cached packages that are not currently installed, and the unused sync database
#Leaves packages in your cache only for those packages which are currently installed on your system. Attention: This eliminates the possibility to Using Downgrade. 
sudo pacman -Sc

#remove unwanted dependencies in yay:
yay -Yc

#clear sessions cache
rm -r ~/.cache/sessions/*

#update manjaro:
sudo pacman -Syyu
