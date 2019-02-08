maincontentmodule = {name: "maincontentmodule", uimodule: true}

#log Switch
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["maincontentmodule"]?  then console.log "[maincontentmodule]: " + arg
    return

##initialization function  -> is automatically being called!  ONLY RELY ON DOM AND VARIABLES!! NO PLUGINS NO OHTER INITIALIZATIONS!!
maincontentmodule.initialize = () ->
    log "maincontentmodule.initialize"

#region internal functions
#endregion

export default maincontentmodule
