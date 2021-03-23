source $DOTHOME/lib/common

function install_software () {
    if test $(which dotnet)
    then
        # Install EF Core CLI
        if test ! $(dotnet-ef)
        then
            dotnet tool install --global dotnet-ef
        fi
        if test ! $(dotnet-format)
        then
            dotnet tool update -g dotnet-format
        fi
        # Trusting dotnet dev cert
        if test $(dotnet dev-certs https)
        then
            dotnet dev-certs https --trust
        fi
    fi
}

install_software
