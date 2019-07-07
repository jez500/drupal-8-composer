FROM jez500/openshift-drupal-php:1.4

# Clone the codebase in.
RUN git clone --depth=1 https://github.com/jez500/drupal-8-composer.git /code

# Create a composer cache 
RUN cd /code && rm -rf .git && composer install && rm -rf /code/*

