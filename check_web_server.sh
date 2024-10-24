!/bin/bash


if ! nc -z localhost 80; then
    exit 1
fi


if [ ! -f /var/www/html/index.html ]; then
    exit 2
fi

exit 0
