FROM apache/superset:1.1.0
# Switching to root to install the required packages
USER root
RUN pip install --upgrade pip && \
    pip install pyhive \
    pip install requests
