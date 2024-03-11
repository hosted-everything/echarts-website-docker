# echarts-website-docker
echarts 官网私有化部署脚本

# nodejs
using nodejs 18.19.1

```bash
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm install v14.21.3
nvm use 14.21.3

```

# install puppetteer

`npm install -g puppetteer`

# missing lib

```bash
sudo apt-get install libatk1.0-0
sudo apt-get install libatk-bridge2.0-0
sudo apt install libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev
```

```bash
git init submodule
cd echarts-examples
npm install --force
npm run build:example
```
