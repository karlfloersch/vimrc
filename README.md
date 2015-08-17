# Karl's .vimrc
This is good old vimrc with some (hopefully) clear comments. It's worked out
well for me at least. If you feel like it, give it a try!

## Features
- Vundle
- Syntax / auto complete
- Nice pretty colors
- Karl's choices on good settings... if you trust me then this is for you! ;)

## Installation
1. Clone the repo with `git clone https://github.com/karlfloersch/vimrc.git ~/.vim/vimrc` 
2. Make a symlink to the vimrc file with `ln ~/.vim/vimrc/vimrc ~/.vimrc`
3. Install Vundle, instructions here: https://github.com/VundleVim/Vundle.vim
4. Open the .vimrc file with `vim ~/.vimrc` 
5. If you wnat auto completion, you will need to install YouCompleteMe which requires a
few more steps to install.  If you *don't* want auto complete then look for the line 
`Plugin 'Valloric/YouCompleteMe'` and comment it out with `"`
6. Open the .vimrc file with `vim ~/.vimrc` and type `:PluginInstall` to install the plugins
7. You're done! (maybe) *Continue to step 7 if you wanted auto complete*
8. [optional] Install YCM. Instructions found here: https://github.com/Valloric/YouCompleteMe

## Maintenance
I'm going to update this whenever I feel like it... so if these links become out of date,
or whatever else, then I'm sorry. Feel free to reach out to me with any questions.
