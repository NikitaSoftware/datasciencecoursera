# Collecting data from Twitter by API
library(httr)
myapp = oauth_app("twitter", key = "f9jivga6mPPwdcOwT2YmLjOKi", secret = "
QvMGGrq6HOPHNWJRyINuu36RpMqfVTAoKnyPEgIB7DD743UImF")

sig = sign_oauth1.0(myapp, token = "1102152520863047680-TUUkcEgPuH76Zi878PJnxdGLpoq9nr", 
                    token_secret = "Huw9nYMwyLphHiueLThEIKGkMJXs2FEMdch7lvKBIqOrK")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)

json1 = content(homeTL)
#json2 = jsonlite::fromJSON(toJSON(json1))
json1
