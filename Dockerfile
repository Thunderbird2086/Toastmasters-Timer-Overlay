FROM node:12

MAINTAINER Thunderbird2086 <37539914+Thunderbird2086@users.noreply.github.com>

COPY img/ /opt/Toastmasters-Timer-Overlay/img/
COPY node_modules/ /opt/Toastmasters-Timer-Overlay/node_modules/
COPY src/ /opt/Toastmasters-Timer-Overlay/src/
COPY web/ /opt/Toastmasters-Timer-Overlay/web/
COPY package.json  package-lock.json tsconfig.json webpack.config.js /opt/Toastmasters-Timer-Overlay/

WORKDIR /opt/Toastmasters-Timer-Overlay
RUN npm install; npm run build

EXPOSE 8888
CMD ["node", "/opt/Toastmasters-Timer-Overlay"]
