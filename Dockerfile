FROM scratch
LABEL maintainer="martyna.kus666@gmail.com"
LABEl description="Apache+PHP"
ENV PHPVERSION=7
RUN apk add --update apache2 php${PHPVERSION}-apache2 php${PHPVERSION}
RUN rm -rf /var/cache/apk/*
RUN rm -rf /var/www/localhost/htdosc/index.html
RUN echo "<?php phpinfo(); ?>" > /var/www/localhost/htdocs/index.php
RUN chmod 755 /var/www/localhost/htdocs/index.phpexpose 80
ADD files/alpine-minirootfs-3.12.1-x86_64.tar.gz /
ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]