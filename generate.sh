# !/bin/bash

git submodule update --remote

cd echarts-doc
npm install --force
npm run build:site

cd ../echarts-examples
npm install --force
npm run build

cd ../echarts-theme-builder
npm install
npm run build

cd ../echarts-www
npm install --force
npm run build

# cd ../echarts-handbook
# npm install --force
# npm run build:gh

cd ..

find ./echarts-website -type f -exec sed -i 's|http://localhost/echarts-website|/echarts-website|g' {} +
