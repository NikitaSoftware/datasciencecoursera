#regular expressions
#^i am - all lines which starts from "i am"
#$Nikita - all lines wich ends of "Nikita"
#[aA] - all lines which consist either "a" or "A"
#^[0-9][a-zA-Z] - all lines which starts from number 0-9 and consist letters a-z or A-Z
#[^?.]$ all lines which ends not with "?" or "."
#. - is used to refer to any character
#flood | fire - alternatives, all lines which have one of this expr
#^[gG]ood | [Bb]ad - starts only from "good" 
#^([gG]ood | [Bb]ad ) - starts either good or bad