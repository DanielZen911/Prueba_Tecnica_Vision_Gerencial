import os
import pandas as pd
import requests
from dotenv import load_dotenv
from sqlalchemy import create_engine


load_dotenv()

USER = os.getenv("DB_USER")
PASSWORD = os.getenv("DB_PASSWORD")
HOST = os.getenv("DB_HOST")
PORT = os.getenv("DB_PORT")
DB_NAME = os.getenv("DB_NAME")

def cargar_a_postgres(df):
    try:
        engine = create_engine(f'postgresql://{USER}:{PASSWORD}@{HOST}:{PORT}/{DB_NAME}')
        print("Cargando datos en PostgreSQL...")
        df.to_sql('cartera', engine, if_exists='replace', index=False)
        print("¡Datos guardados exitosamente!")
    except Exception as e:
        print(f"Error: {e}")

def extraer_datos():
    url = "https://www.datos.gov.co/resource/rvii-eis8.json"
    respuesta = requests.get(url)
    if respuesta.status_code == 200:
        return pd.DataFrame(respuesta.json())
    return None

if __name__ == "__main__":
    df = extraer_datos()
    if df is not None:
        cargar_a_postgres(df)