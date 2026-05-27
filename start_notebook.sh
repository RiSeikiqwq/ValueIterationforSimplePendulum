#!/bin/bash

# 获取脚本所在目录的绝对路径
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

VENV_DIR="$SCRIPT_DIR/venv"
REQ_FILE="$SCRIPT_DIR/requirements.txt"

# 检查当前目录下是否存在虚拟环境
if [ ! -d "$VENV_DIR" ]; then
    echo "未在 $SCRIPT_DIR 中找到 venv 虚拟环境！自动创建……"
    python -m venv "$VENV_DIR"
    echo "虚拟环境创建成功。"
fi

# 激活虚拟环境
source "$VENV_DIR/bin/activate"

if [ -f "$REQ_FILE" ]; then
    echo "发现 requirements.txt，正在检查/安装依赖..."
    pip install --upgrade pip
    pip install -r "$REQ_FILE"
fi

# 检查是否安装了 jupyter
if ! command -v jupyter &> /dev/null; then
    echo "提示: 虚拟环境中未安装 jupyter，正在尝试安装..."
    pip install jupyter
fi

# 用 Jupyter 启动指定的 ipynb 文件
jupyter notebook "$SCRIPT_DIR/src_and_output/value_iteration_pendulum.ipynb" --NotebookApp.token=''
