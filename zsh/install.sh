source $DOTHOME/lib/common

function after_brew_install_software () {
    if test $(which az)
    then
        # Sign into Azure cli
        az account show || az login
    fi
}

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

after_brew_install_software
