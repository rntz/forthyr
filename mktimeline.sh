#!/bin/bash
egrep -v '^(#.*)?$' | while read -d : date; do
    read event
    # NB. replacing hyphen-minus with unicode minus
    echo -n "<tr><td>${date}</td>" | sed -re 's/c\. /c\.\&nbsp;/g;s/-/−/g'
    echo "<td>${event}</td></tr>"
done
