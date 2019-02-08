###################################################################
# the Script
###################################################################
import debugmodule from   "./debugmodule.js"
import maincontentmodule from "./maincontentmodule.js"
import configmodule from "./configmodule.js"
import networkmodule from "./networkmodule.js"
import svgiconmodule from "./svgiconmodule.js"

Modules = {
    debugmodule,
    maincontentmodule,
    configmodule,
    networkmodule,
    svgiconmodule
}

global.allModules = Modules


window.onload = ->
    ### Initialize Modules
    # Preparations without other dependencies than DOM and the variable structure of the other Modules
    # we can do that because here the DOM and the Plugins have already been loaded :-)
    # AND NOTHING ELSE!
    ###
    for name, module of Modules
        module.initialize() 
