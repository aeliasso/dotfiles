# virtualenvwrapper använder dessa
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=$HOME/devel

if [ -f /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
fi

# låter pip cacha sina nerladdade paket (internetåtkomst krävs dock fortfarande)
export PIP_DOWNLOAD_CACHE=$HOME/.cache/pip_download_cache
