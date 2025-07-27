FROM jekyll/jekyll:4

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN gem install webrick

EXPOSE 4000

CMD ["jekyll", "serve", "--watch", "--host", "0.0.0.0","--force_polling"]
