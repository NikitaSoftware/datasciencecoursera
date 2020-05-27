## reading data from the Web
con = url("http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en")
htmlCode = readLines(con)
close(con)
View(htmlCode)

library(XML)
url <- "https://scholar.google.com/citations?hl=en&user=HI-I6C0AAAAJ&view_op=list_works&cituft=1&cituft=2&cituft=3&email_for_op=nekitfivt%40gmail.com&gmla=AJsN-F6vTr9W7OcWZWTcLA8wE39SvTCNX_wBaYf-OGr8qclFAIzo2o0V_9oMqAK2pM_UkiTvtqewzM5XkW_pycffYgnkWxA_UKSBsmeyRSUvP564GzWfQwv5TWZKIxUVQkuy7ekACN129GomUtU1fvbARICt5I_8qQrfoGZMOfoftsznN4eEacaGxvEZkTI4NQT49_Cvz8BR9DWd_iChg8f8ZTz9vtJH6dJKEwl7kQaUz1GieC8srL0-yLvF_1BZkxsxag32ZQ29_kaENVucTMQcapCApKdYeFtyWyoUH2C1h3uZWwer5XW7-IncabYyho2gJ72Ody1I"
library(RCurl)
xdata <- getURL(url)
html <- htmlTreeParse(xdata, useInternalNodes = TRUE)

xpathSApply(html, "//title", xmlValue)
xpathSApply(html, "//td [@class='gsc_a_c']", xmlValue)  # number of citations
xpathSApply(html, "//a [@class='gsc_a_ac']", xmlValue)  # number of citations
# additional features
xpathSApply(html, "//td [@class='gsc_a_t']", xmlValue)  # article / paper title
xpathSApply(html, "//td [@class='gsc_a_y']", xmlValue)  # publication year

library(httr)
html2 = GET(url)
content2 = content(html2, as = "text")
parsedHtml = htmlParse(content2, asText =TRUE)
xpathSApply(parsedHtml, "//title", xmlValue)

# accessing websites with password

pg2 = GET("http://httpbin.org/basic-auth/user/passwd",
          authenticate("user","passwd"))
pg2

names(pg2)

## using handles
google = handle("https://google.com")
pg1 = GET(handle = google, path = "/")
pg2 = GET(handle = google, path = "search")