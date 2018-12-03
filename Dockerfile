FROM gittools/gitversion-dotnetcore:linux

RUN apt-get install git -y

RUN apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

COPY gitversion /usr/lib/GitVersion/gitversion

RUN ln -s /usr/lib/GitVersion/gitversion /usr/local/bin/gitversion

COPY tag-repo /usr/lib/TagRepo/tag-repo

RUN ln -s /usr/lib/TagRepo/tag-repo /usr/local/bin/tag-repo

RUN mkdir -p /usr/app/src

WORKDIR /usr/app/src

ENTRYPOINT sh
