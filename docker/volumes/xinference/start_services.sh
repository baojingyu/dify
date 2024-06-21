#!/bin/bash

# 启动 xinference 服务
xinference-local -H 0.0.0.0 --log-level debug &

# 给服务一些时间来启动
sleep 45

# 启动 bge-m3 embedding 模型
xinference launch --model-name bge-m3 --model-type embedding &

# 启动 bge-reranker-v2-m3 rerank 模型
xinference launch --model-name bge-reranker-v2-m3 --model-type rerank &

# 等待所有后台进程结束
wait

