#!/bin/bash


sed -i "" 's/https:\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./echarts-www --exclude-dir=node_modules`

sed -i "" 's/href="\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./echarts-www --exclude-dir=node_modules`

sed -i "" 's/src="\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./echarts-www --exclude-dir=node_modules`

sed -i "" 's/src="\/\/cdn.jsdelivr.net\/npm/\/echarts-website\/assets/' `grep -rl "cdn.jsdelivr.net/npm/" ./echarts-www --exclude-dir=node_modules`

sed -i "" 's/http:\/\/localhost\//\//' `grep -rl "http://localhost" ./echarts-www --exclude-dir=node_modules`

sed -i "" 's/https:\/\/echarts.apache.org\//\/echarts-website\//' `grep -rl "/echarts-website/" ./echarts-www --exclude-dir=node_modules`

