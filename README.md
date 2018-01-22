
## Description
oke oke oke, this is where we gonna  get real,
we gonna install newest nano, and make it all pretty with fancy colors.

## Easy Street Steps
Just Run this:
```sh
chmod +x ./init.sh; ./init.sh
```
All this does is automate the steps outlined below

## Computer Freak Steps
1.) copy the nano file here into the `~/bin/nano` folder (in your home directory)

2.) next add this line to your ~/.mybashrc: `alias nano="~/bin/nano/nano"`

3 .) run this command on your linux computer
```sh
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
```
4.) Add these line to the beginning or end of your `~/.nanorc` to add mouse support where avaliable
```sh
set autoindent
set mouse
set smooth
set tabstospaces
```