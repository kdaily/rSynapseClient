## Send a put request to Synapse
## 
## Author: Matthew D. Furia <matt.furia@sagebase.org>
###############################################################################

synapsePut <- 
  function(
    uri, 
    entity, 
    endpoint=synapseServiceEndpoint("REPO"), 
    curlHandle=getCurlHandle(), 
    anonymous = FALSE, 
    opts = .getCache("curlOpts"),
    checkHttpStatus=T
)
{
  ## constants
  kMethod <- "PUT"
  ## end constants
  
  .synapsePostPut(uri = uri, 
    entity = entity, 
    endpoint = endpoint,
    requestMethod = kMethod,
    curlHandle = curlHandle, 
    anonymous = anonymous,  
    opts = opts,
    checkHttpStatus=checkHttpStatus
  )
}