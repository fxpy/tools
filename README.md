# tools

## 1. Resize Partition for full disk storage

#### (for example when upgrading disk size on hoster or resize disk on PVE)

```
sudo wget -q -O resizepart.sh https://raw.githubusercontent.com/fxpy/tools/main/resizepart.sh && sudo chmod +x resizepart.sh && sudo /bin/bash resizepart.sh
```

## 2. Resize exact /dev/sda2 for full disk storage

```
wget -q -O sda2resize.sh https://raw.githubusercontent.com/fxpy/tools/main/sda2resize.sh && sudo chmod +x sda2resize.sh && sudo /bin/bash sda2resize.sh
```
