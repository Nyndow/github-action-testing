FROM python:3.11-slim

WORKDIR /src

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

CMD ["python", "-m", "pytest"]
