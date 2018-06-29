FROM gittools/gitversion

COPY gitversion gitversion

RUN ln -s /usr/lib/GitVersion/gitversion /usr/local/bin/gitversion

RUN mkdir -p /usr/app/src

WORKDIR /usr/app/src

ENTRYPOINT bash
