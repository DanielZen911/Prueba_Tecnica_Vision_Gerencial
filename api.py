from fastapi import FastAPI, HTTPException
from sqlalchemy import create_engine, text
import os
from dotenv import load_dotenv

load_dotenv()

app = FastAPI(title="API de Consulta de Cartera - Visión Gerencial")


DB_URL = os.getenv("DATABASE_URL") 
engine = create_engine(DB_URL)

@app.get("/")
def inicio():
    return {"mensaje": "API de Cartera Funcional"}

@app.get("/consultar/{entidad}/{cartera}")
def consultar_datos(entidad: str, cartera: str):
    query = text("""
        SELECT * FROM public.cartera 
        WHERE UPPER(nombreentidad) LIke UPPER(:entidad) AND UPPER(desc_renglon) LIKE UPPER(:cartera)
    """)
    
    with engine.connect() as connection:
        result = connection.execute(query, {"entidad": f"%{entidad}%", "cartera": f"%{cartera}%"})
        data = [dict(row._mapping) for row in result]
        
    if not data:
        raise HTTPException(status_code=404, detail="No se encontraron datos para esa combinación")
    
    return {"total_registros": len(data), "datos": data}