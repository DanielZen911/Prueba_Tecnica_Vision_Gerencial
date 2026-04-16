#  Sistema de Extracción y Almacenamiento de Cartera (RPA)

Este proyecto es una solución técnica desarrollada para la prueba de Visión Gerencial. Consiste en un proceso automatizado (RPA) que extrae datos de cartera desde una API pública, los procesa y los almacena de forma segura en una base de datos PostgreSQL para su posterior análisis gerencial.

---

##  Características

- **Extracción Automatizada:** Obtención de datos en tiempo real desde la API de Datos Abiertos Colombia.  
- **Procesamiento de Datos:** Limpieza y estructuración de la información mediante la librería `pandas`.  
- **Almacenamiento Robusto:** Integración con PostgreSQL utilizando `SQLAlchemy` para garantizar la persistencia.  
- **Seguridad:** Implementación de variables de entorno (`python-dotenv`) para proteger credenciales sensibles.  

---

##  Tecnologías Utilizadas

- **Lenguaje:** Python 3.10+  
- **Librerías:** Pandas, SQLAlchemy, Requests, Python-dotenv  
- **Base de Datos:** PostgreSQL  
- **Control de Versiones:** Git & GitHub  

---

##  Requisitos e Instalación

### 1. Clonar el repositorio

```bash
git clone https://github.com/DanielZen911/Prueba_Tecnica_Vision_Gerencial.git
cd Prueba_Tecnica_Vision_Gerencial
```

### 2. Instalar dependencias

```bash
pip install -r requirements.txt
```

### 3. Configuración de Variables de Entorno (.env)

Por seguridad, las credenciales de la base de datos no se suben al repositorio.

1. Crea un archivo llamado `.env` en la raíz del proyecto.  
2. Utiliza la plantilla del archivo `.env.example` y completa tus datos locales:

```env
DB_USER=tu_usuario_postgres
DB_PASSWORD=tu_contraseña
DB_HOST=localhost
DB_PORT=5432
DB_NAME=db_cartera_vg
```

---

##  Ejecución

Para iniciar el proceso de extracción y carga de datos, ejecuta:

```bash
python extractor.py
```

Al terminar, el sistema confirmará que los datos han sido guardados exitosamente en PostgreSQL.

---

##  Autor

**Daniel Zen**  
Prueba Técnica para Visión Gerencial
