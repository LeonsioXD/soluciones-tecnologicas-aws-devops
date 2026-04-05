# Etapa 1: Build (Construcción)
FROM python:3.9-slim AS builder
WORKDIR /app
RUN echo "boto3" > requirements.txt
RUN pip install --user -r requirements.txt

# Etapa 2: Runtime (Producción)
FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY aws_report.py .
ENV PATH=/root/.local/bin:$PATH
EXPOSE 5000
CMD ["python", "aws_report.py"]
