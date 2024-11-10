# 1. 原理
- 运用 `cftest.exe` 脚本跑 cloudflare官方优选IP 延迟测试和网速，之后会生成 `result.txt` 和 `result.csv` ，csv是测速结果文件，txt是优选ip订阅节点文件
- 如果运行auto.bat脚本，生成之后会自动提交到 Git 仓库
- 在 Git 仓库中复制 `result.txt` 的下载链接，可直接当作订阅链接使用，适用于 v2ray、clash、karing 等软件直接导入。
- **注意**：生成的节点不能用 tun 模式运行，实测在此模式下速度较慢或超时，只能使用系统代理运行。

# 2. 操作步骤
## 2.1 打上 star 并 fork 当前项目

## 2.2 本地使用
- 下载 zip 压缩包到本地并解压。
- 直接运行根目录下的 `cftest.exe`，得到 `result.txt`，然后将其导入到代理软件即可。

## 2.3 生成订阅链接
- fork 项目之后，将其 git clone 到本地。
- 运行根目录下的 `auto.bat`，结果会自动推送到代码仓库。
- 在 Git 仓库中找到 `result.txt`文件点进去，然后点击raw按钮，复制url链接（如https://raw.githubusercontent.com/xxx/main/result.txt ）
- 在代理软件中导入订阅链接即可。
