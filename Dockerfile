FROM node:7

#Expose port 8080
EXPOSE 8080

#Get the Git Repo and move the project into app directory
RUN mkdir ~/smartthings \
  && git clone https://github.com/redloro/smartthings.git ~/smartthings/ \ 
  && mkdir /usr/src/app \
  && cp ~/smartthings/smartthings-nodeproxy/*.* /usr/src/app/ \
  && mkdir /usr/src/app/plugins

#Users can choose to make these plugins true at runtime, and it will add the plugin 
ENV PLUGIN_AD2USB false
ENV PLUGIN_DASH false
ENV PLUGIN_ENVISILINK false
ENV PLUGIN_GENERIC false
ENV PLUGIN_MPR-SG6Z false
ENV PLUGIN_RNET false

#user will override the config file to their own /usr/src/app/config.json
