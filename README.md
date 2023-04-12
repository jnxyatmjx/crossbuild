# crossbuild
Cross platform build action

Use github action to build shadowsocks-libev cross platform by buildroot


包编译目录中 buildroot/package/shadowsocks-libev/

If the [.hash](https://buildroot.org/downloads/manual/manual.html#adding-packages-hash) file is missing, then no check is done at all.

~~编译shadowsocks-libev时需要用到patch。~~
由于本项目是fork原仓库的，先将[原仓库](https://github.com/shadowsocks/shadowsocks-libev.git)的原分支[合并](https://stackoverflow.com/questions/7244321/how-do-i-update-or-sync-a-forked-repository-on-github?page=1&tab=scoredesc#tab-top)下来，以方便查找对应commid
然后使用 git format-patch 8285e5a...e699dba -o ./patchs 生成对应补丁到patchs目录