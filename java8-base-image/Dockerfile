ARG ALPINE_VERSION=3.7

FROM alpine:${ALPINE_VERSION}

ARG APPLICATION_PATH=/ 
ARG USER_NAME="app" 
ARG USER_ID="1000"

ENV APK_ADD="bash curl openjdk8" 


WORKDIR ${APPLICATION_PATH}

RUN apk update \
&& apk upgrade \
&& apk add --no-cache ${APK_ADD} \
&& rm -rf \
	/usr/share/man/* \	
	/usr/includes/* \	
	/var/cache/apk/* 	
#&& adduser -H -D ${USER_NAME} -u ${USER_ID} \
#&& chown ${USER_NAME}:${USER_NAME} -R ${APPLICATION_PATH} 

#USER ${USER_NAME}



