# ngx_vim_config

基于Vundle插件管理的vim配置文件

1. 安装Vundle
    - git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

2. 配置vim （采取了软连的方式，也可以采取文件覆盖的方式）
    - git clone https://github.com/tinykuai/ngx_vim_config ~/ngx_vim_config
    - ln -sf ~/ngx_vim_config/vimrc ~/.vimrc
    - ln -sf ~/ngx_vim_config/extend ~/.vim/extend

3. 安装插件
    - 打开vim，会出现找不到solarized的错误，不必惊慌，因为这个主题插件未安装，忽略之
    - :PluginInstall

4. 在tmux中vim主题配色不对 ([原文](http://blog.theerrorlog.com/when-tmux-runs-under-8-colors-mode.html "当tmux以8色模式运行……") )
    - .tmux.conf 里加入set -g default-terminal "screen-256color"
    - .bashrc或者.bash_profile 里面加上export TERM=xterm-256color
    
5. 参考
    - https://github.com/luofei614/vim-plug 的vundle版，去掉了一些键位映射，替换和去掉了部分插件。（详见配置文件）
