FROM php:5.4-apache
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install libxslt-dev
RUN docker-php-ext-install mysql mbstring exif mysqli xsl
RUN docker-php-ext-enable mysql mbstring exif mysqli xsl
RUN cd /var/www/html
RUN touch index.php
RUN echo '<?php
$link = mysql_connect('mysql', 'root', 'TM1q2w3e');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($link);
	?>'>index.php
