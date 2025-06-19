# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# add path
if [ -d "$HOME/.local/share/gem/ruby/3.0.0/bin" ]
then
	PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
fi
if [ -d "$HOME/.cargo/bin" ]
then
	PATH="$HOME/.cargo/bin:$PATH"
fi


export EDITOR=micro
export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:32

if [ -f ~/.cargo/env ]
then
	. ~/.cargo/env
fi

# activate virtual python environment
#if [ -d "$HOME/.pyvenv" ]
#then
#	source $HOME/.pyvenv/bin/activate
#fi

# activate local settings if exists
if [ -f "$HOME/.profile.local" ]
then
	source $HOME/.profile.local
fi

# EOF
