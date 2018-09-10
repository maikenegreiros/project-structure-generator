#!/bin/bash
###### funcao ################
generate()
{
    projectsdir="/var/www/html/"

    root="$projectsdir$@/"
    mkdir $root

    createAppDirectory $root
    createPublicDirectory $root
    createSourcesDirectory $root
    createStoragesDirectory $root
    createRootFiles $root
}

createAppDirectory()
{
    app=$@'app/'
    app_classes=$app'classes/'
    app_classes_controllers=$app_classes'Controllers/'
    app_routers=$app'routers/'
    app_routers_dependencies=$app_routers'dependencies/'
    app_views=$app'views/'
    app_views_commons=$app_views'commons/'

    ### Creating Directories ###
    mkdir $app
    mkdir $app_classes
    mkdir $app_classes_controllers
    mkdir $app_routers
    mkdir $app_routers_dependencies
    mkdir $app_views
    mkdir $app_views_commons

    ### Creating Files ###
    touch $app_routers_dependencies'web.php'
    touch $app_views_commons'template.blade.php'
}

createPublicDirectory()
{
    public=$@'public/'
    midias=$public'midias/'

    ### Creating Directories ###
    mkdir $public
    mkdir $midias

    ### Creating Files ###
    touch $public'index.php'
}

createSourcesDirectory()
{
    sources=$@'sources/'

    mkdir $sources
}

createStoragesDirectory()
{
    storages=$@'storages/'

    mkdir $storages
}

createRootFiles()
{
    settings_file=$@'settings-model.ini'
    touch $settings_file
    settings_data= cat 'files-content/settings-model.ini'
    echo $settings_data > $settings_file
    touch $@'composer.json'
    touch $@'readme'
    touch $@'.gitignore'
    touch $@'webpack.js'
}


echo "Digite o nome do projeto: "
read name

generate $name

sleep 2
exit
