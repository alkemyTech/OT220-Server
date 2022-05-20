FROM ruby:3.0.2-alpine 

RUN apk add --update --virtual \
    runtime-deps \
    postgresql-client \
    build-base \
    libxml2-dev \
    libxslt-dev \
    mysql-client \
    mariadb-dev \
    sqlite-dev \
    nodejs \
    yarn \
    npm \
    libffi-dev \
    readline \
    build-base \
    postgresql-dev \
    libc-dev \
    linux-headers \
    readline-dev \
    file \
    git \
    tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR /app
COPY Gemfile Gemfile.lock /app/

ENV BUNDLE_PATH /gems
#RUN yarn install

RUN gem install bundler -v 2.3.4
RUN bundle install
RUN apk add imagemagick
RUN apk add ffmpeg
RUN apk add poppler

COPY . /app/

CMD ["sh"]

EXPOSE 3000