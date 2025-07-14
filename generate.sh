# !/bin/bash

git submodule update --remote

cd echarts-doc
npm install --force
npm run localsite

cd ../echarts-examples
npm install --force
npm run localsite

cd ../echarts-theme-builder
npm install
npm run build

cd ../echarts-www
npm install --force
npm run localsite

cd ../echarts-handbook
npm install --force
export NUXT_TELEMETRY_DISABLED=1
npm run build:localsite

cd ..

find ./echarts-website -type f -exec sed -i 's|http://localhost/echarts-website|/mirror/echarts-website|g' {} +
find ./echarts-website -type f -exec sed -i 's|https://echarts.apache.org|/mirror/echarts-website|g' {} +
find ./echarts-website -type f -exec sed -i 's|//echarts.apache.org|/mirror/echarts-website|g' {} +
find ./echarts-website -type f -exec sed -i 's|<base href="/echarts-website|<base href="/mirror/echarts-website|g' {} +
find ./echarts-website -type f -exec sed -i 's|href="/echarts-website|href="/mirror/echarts-website|g' {} +