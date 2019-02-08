networkmodule = {name: "networkmodule", uimodule: false}

#log Switch
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["networkmodule"]?  then console.log "[networkmodule]: " + arg
    return

#region internal variables
sServerURL = ""
#endregion internal variables

##initialization function  -> is automatically being called!  ONLY RELY ON DOM AND VARIABLES!! NO PLUGINS NO OHTER INITIALIZATIONS!!
networkmodule.initialize = () ->
    log "networkmodule.initialize"
    sServerURL = allModules.configmodule.sServerURL
    

#region internal functions
#post Requests
postToCoreBackendServer = (dir, data, responseHandler) ->
    log 'postToCoreBackendServer'
    ##TODO establish package queu when being offline
    requestURL = sServerURL + dir
    http.post requestURL, data, {}, ((response) ->
        log response.status
        log response.data
        try
            responseHandler JSON.parse(response.data)
        catch e
            log e
    ), (response) ->
        # prints 403
        log response.status
        log response.error
        
getFromServer = (dir, data, responseHandler) ->
    log "getFromServer"
    ##TODO establish package queu when being offline
    requestURL = sServerURL + dir
    http.get requestURL, data, {}, ((response) ->
        try
            responseHandler JSON.parse(response.data)
        catch e
            log e
        return
    ), (response) ->
        # prints 403
        log response.status
        log response.error
    
#endregion internal functions

#region exposed variables

#endregion exposed functions

#region exposed functions
networkmodule.sendLoginRequest = (loginObj, responseHandle) ->
    log "networkmodule.sendBumpRequest"
    log "not!"
    return 
    postToCoreBackendServer("/login", loginObj, responseHandle)
#endregion exposed functions

export default networkmodule