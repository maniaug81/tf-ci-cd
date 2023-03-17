From alpine

RUN apk update && \
    apk add curl && \
    apk add git && \
#    apk add http && \
    apk add vim

#COPY

#CMD

WORKDIR /tmp
CMD git clone https://github.com/maniaug81/aws-terraform-code

#ENV 

#EXPOSE