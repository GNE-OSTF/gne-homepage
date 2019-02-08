svgiconmodule = {name: "svgiconmodule", uimodule: false}

#log Switch
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["svgiconmodule"]?  then console.log "[svgiconmodule]: " + arg
    return

#region internal variables
##endregion internal variables

##initialization function  -> is automatically being called!  ONLY RELY ON DOM AND VARIABLES!! NO PLUGINS NO OHTER INITIALIZATIONS!!
svgiconmodule.initialize = () ->
    log "svgiconmodule.initialize"

#region internal functions
#endregion internal functions

#region exposed variables
#endregion exposed functions

#region exposed functions
svgiconmodule.createSVGIconHTML = (usedIconId, className) ->
    log "svgiconmodule.createProductBlocksFor"
    result = '<svg class="' + className + '">'
    result += '<use xlink:href="' + usedIconId + '">'
    result += '</use></svg>'
    return result
    
#endregion exposed functions

export default svgiconmodule