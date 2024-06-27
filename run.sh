#!/bin/bash

# 检查 Java 是否已安装
if ! command -v java &> /dev/null; then
    echo "Java is not installed. Please install Java and try again."
    exit 1
fi

# 设置环境变量（如果有需要）
# export MY_ENV_VARIABLE=value
export APP_ENV=development

# 运行 Java 程序
echo "Running Java program..."
./gradlew bootRun

# 检查程序是否成功运行
if [ $? -ne 0 ]; then
    echo "Failed to run Java program."
    exit 1
else
    echo "Java program ran successfully."
fi
