FROM python:3.13-slim

LABEL org.opencontainers.image.source="https://github.com/thoulee21/interview-ai"

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app

# 安装系统依赖
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    ffmpeg \
    build-essential \
    portaudio19-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# 安装 poetry
RUN pip install --upgrade pip
RUN pip install poetry --root-user-action=ignore

# 复制项目文件
COPY pyproject.toml poetry.lock* ./

RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction

# 复制所有项目文件
COPY . .

EXPOSE 5000

# 直接在Dockerfile中集成entrypoint.sh的命令
CMD ["sh", "-c", "cd /app && flask db upgrade && exec gunicorn -c gunicorn.conf.py run:app"]