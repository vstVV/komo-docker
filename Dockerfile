FROM python:3.8
WORKDIR /
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main" > /etc/apt/sources.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main" >> /etc/apt/sources.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main" >> /etc/apt/sources.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
RUN apt install git
RUN git clone https://github.com/komomon/Komo.git
WORKDIR /Komo
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install --no-cache-dir  -r requirements.txt
RUN python3 Komo.py install
CMD ["python3", "Komo.py"]
