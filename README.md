# 单摆值迭代控制项目 (Value Iteration Pendulum)

本项目包含一个使用值迭代算法实现单摆控制的 Jupyter Notebook 文件。
如果你的Linux系统已经配置好了包含`requiremnets.txt`所要求的包的虚拟环境，激活，然后在当前目录下直接运行
```
jupyter notebook "src_and_output/value_iteration_pendulum.ipynb" --NotebookApp.token=''
```
为了简化配置，项目附带了一个自动化 Bash 脚本，可以一键配置 Python 虚拟环境、安装依赖并启动项目。如果你的系统内没有安装对应包和模块，执行
```
chmod +x start_notebook.sh
./start_notebook.sh
```
如果不想单独为虚拟环境安装依赖包，也可以直接运行`pip`命令，然后再用jupyter notebook启动脚本
```
pip install notebook numpy matplotlib ipython drake ipywidgets meshcat
```

---

## 项目结构

```text
├── run.sh                    # 一键启动脚本
├── requirements.txt          # 项目依赖包列表
└── src_and_output/
    └── value_iteration_pendulum.ipynb  # 算法代码
└── report/
    └── 课程设计报告.md  # 设计报告
```

---
