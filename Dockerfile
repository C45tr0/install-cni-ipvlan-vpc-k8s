FROM golang:1.9.2-alpine3.6
MAINTAINER C45tr0 <william.the.developer@gmail.com>
ADD start.sh /start.sh
RUN chmod +x /start.sh
VOLUME ["/shared"]
CMD [ "/start.sh" ]
