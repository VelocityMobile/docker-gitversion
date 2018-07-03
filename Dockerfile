FROM gittools/gitversion

COPY gitversion gitversion

RUN ln -s /usr/lib/GitVersion/gitversion /usr/local/bin/gitversion

COPY tag-repo /usr/lib/TagRepo/tag-repo

RUN ln -s /usr/lib/TagRepo/tag-repo /usr/local/bin/tag-repo

RUN mkdir -p /usr/app/src

WORKDIR /usr/app/src

ENTRYPOINT bash
