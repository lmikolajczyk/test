FROM python:3.9.20

# Utworzenie katalogu roboczego w kontenerze
WORKDIR /app

# Skopiowanie pliku requirements.txt do katalogu roboczego
COPY requirements.txt /app/

# Instalacja zależności z pliku requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Skopiowanie reszty plików aplikacji do katalogu roboczego
COPY . /app/

# Udostępnienie portu, na którym będzie działać serwer Django
EXPOSE 5000

# Polecenie uruchamiane przy starcie kontenera
CMD ["python", "main.py"]
