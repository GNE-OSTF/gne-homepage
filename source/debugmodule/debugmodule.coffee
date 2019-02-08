debugmodule = {name: "debugmodule", uimodule: false}


##initialization function  -> is automatically being called!  ONLY RELY ON DOM AND VARIABLES!! NO PLUGINS NO OHTER INITIALIZATIONS!!
debugmodule.initialize = () ->
    console.log "debugmodule.initialize - nothing to do"

debugmodule.modulesToDebug = 
    ## UI modules
    maincontentmodule: true
    svgiconmodule: true
    # other modules
    configmodule: true
    networkmodule: true


#region exposed variables

export default debugmodule
