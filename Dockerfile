FROM balenalib/raspberrypi3-alpine

WORKDIR /app

# Change TimeZone
RUN apk add --no-cache tzdata
ENV TZ=Asia/Ho_Chi_Minh

COPY scripts ./
RUN chmod -R +x ./*.sh

CMD ["/bin/bash", "start.sh"]