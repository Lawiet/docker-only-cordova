FROM node

ENV IONIC_VERSION 6.8.0
ENV CORDOVA_VERSION 8.1.1
ENV ARCH=x64
ENV NODE_OPTIONS=--max_old_space_size=32768

RUN npm cache clean --force && npm install --no-shrinkwrap --update-binary && \
    npm i -g --unsafe-perm --no-interactive increase-memory-limit @angular/cli @ionic/cli@${IONIC_VERSION} cordova@${CORDOVA_VERSION} phonegap native-run cordova-res firebase-tools xcode q
