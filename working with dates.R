#working with dates
d1 = date()
d1
class(d1)
#[1] "character"
d2 = Sys.Date()
d2
class(d2)
#[1] "Date"
format(d2,"%a %b %d")
#[1] "пт май 29"
x = c("1январь1960", "2январь1960", "31март1960", "30июль1960")
z = as.Date(x,"%d%b%Y")
z
z[1] - z[2]
#Time difference of -1 days
as.numeric(z[1] - z[2])
#[1] -1
weekdays(d2)
months(d2)
julian(d2)
library(lubridate)
ymd("20140108")
#[1] "2014-01-08"
mdy("08/04/2013")
#[1] "2013-08-04"
dmy("03-04-2013")
ymd_hms("2011-08-03 10:15:03")
ymd_hms("2011-08-03 10:15:03", tz = "Pacific/Auckland")
#[1] "2011-08-03 10:15:03 NZST"





