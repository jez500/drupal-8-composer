FROM jez500/openshift-drupal-php:1.0

RUN git clone --depth=1 https://github.com/jez500/drupal-8-composer.git /code
RUN cd /code && rm -rf .git && composer install
