FROM ubuntu:trusty

ADD http://dl.cnezsoft.com/zentao/10.0.alpha/ZenTaoPMS.10.0.alpha.zbox_64.tar.gz  /tmp
RUN tar -zxvf /tmp/ZenTaoPMS.10.0.alpha.zbox_64.tar.gz -C /opt \
    && rm -rf /tmp/ZenTaoPMS.10.0.alpha.zbox_64.tar.gz /tmp/zbox*

COPY entrypoint.sh /usr/local/bin/

EXPOSE 80

ENTRYPOINT  ["entrypoint.sh"]
