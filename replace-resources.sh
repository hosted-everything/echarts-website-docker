#!/bin/bash

# Mac sed -i 会有备份问题，和linux不同，所以需要加上 ""
# 举例：
# linux: sed -i 
# mac: sed -i ""

## 替换cdn资源为本地资源
LC_CTYPE=C sed -i "" 's/https:\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./ --exclude-dir=node_modules`

LC_CTYPE=C sed -i "" 's/href="\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./ --exclude-dir=node_modules`

LC_CTYPE=C sed -i "" 's/src="\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./ --exclude-dir=node_modules`

LC_CTYPE=C sed -i "" 's/src="\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./ --exclude-dir=node_modules`

## 替换 / 为 /
LC_CTYPE=C sed -i "" 's/http:\/\/localhost\//\//' `grep -rl "http://localhost" ./ --exclude-dir=node_modules`

LC_CTYPE=C sed -i "" 's/https:\/\/echarts.apache.org\//\/echarts-website\//' `grep -rl "/echarts-website/" ./ --exclude-dir=node_modules`