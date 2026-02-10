FROM python:3.10-slim

WORKDIR /app

# 如果你有 requirements.txt 就复制安装
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 复制代码
COPY . /app

EXPOSE 8000
CMD ["python", "app.py"]
