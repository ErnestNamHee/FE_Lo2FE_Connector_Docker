#!/bin/bash -x

# Test the existence of file other wise copy
FILE1='/data/settings.js'

if test -f "$FILE1" ; then 
    echo "$FILE1 exists"
else 
    echo "Copy settings.js to $FILE1"
    cp settings.js $FILE1
fi  

# Execute Argument in Dockerfile CMD commande line 
exec "$@"