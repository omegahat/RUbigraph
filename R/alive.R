
isUbigraphRunning =
function(server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
{
  ans = try(curlPerform(nobody = TRUE, curl = curl))
  inherits(ans, "try-error") == FALSE
}

