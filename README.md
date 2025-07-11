# echarts-website-docker
echarts 官网私有化部署脚本


```bash
git submodule update --remote

cd echarts-doc
npm install --force
npm run build:site

cd echarts-examples
npm install --force
npm run build

cd echarts-theme-builder
npm install
npm run build

cd echarts-www
npm install --force
npm run build

cd echarts-handbook
npm install --force
npm run build:gh

npm install -g http-server

cd echarts-website
http-server
```
