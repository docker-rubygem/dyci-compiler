FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.3

RUN gem install dyci-compiler --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dyci-compiler"]
CMD ["--help"]
