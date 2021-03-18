source $DOTHOME/lib/common

function after_brew_install_software () {
    if test $(which az)
    then
        # Sign into Azure cli
        az account show || az login
    fi
}

after_brew_install_software