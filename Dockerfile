FROM nginx

LABEL maintainer huangxb0512@gmail.com

WORKDIR /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

ADD echarts-website /usr/share/nginx/html/echarts-website
ADD assets /usr/share/nginx/html/echarts-website/assets
RUN rm -rf /usr/share/nginx/html/echarts-website/.git
RUN rm -rf /usr/share/nginx/html/echarts-website/node_modules

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
