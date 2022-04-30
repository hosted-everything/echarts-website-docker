#!/bin/bash

# Mac sed -i 会有备份问题，和linux不同，所以需要加上 ""
# 举例：
# linux: sed -i 
# mac: sed -i ""

sh replace-echarts-www.sh

sh replace-echarts-doc.sh

sh replace-echarts-examples.sh