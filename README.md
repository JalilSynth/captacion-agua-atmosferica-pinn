# De la capilaridad a la inferencia

**Laboratorio reproducible: captación de agua atmosférica con superficies bioinspiradas y redes neuronales informadas por física (PINN).**

Proyecto de investigación y enseñanza de la Facultad de Ciencias de la Universidad Autónoma del Estado de México (UAEMÉX).
Proyecto registrado: **7386/2026CyS** — Secretaría de Ciencia, UAEMÉX.

> ⚠️ **Estado: en desarrollo (esqueleto).** Este repositorio establece la estructura reproducible del proyecto. El modelo PINN y los experimentos aún **no están implementados**; los cuadernos y módulos son plantillas guía. No contiene resultados definitivos.

## ¿De qué trata?

Inspirándonos en cómo la seda de araña capta y transporta gotas de rocío (capilaridad, gradientes de mojabilidad y presión de Laplace), este proyecto estudia el diseño de **superficies bioinspiradas** para un prototipo de **captación de agua atmosférica** híbrido (solar/eléctrico), y usa **redes neuronales informadas por física (PINN)** para inferir parámetros ocultos (mojabilidad, tensión superficial, coeficiente de condensación) y optimizar el diseño.

Principio rector: **validar antes de interpretar.**

## Estructura

```
notebooks/        Cuadernos guiados (física, datos, PINN, validación)
src/              Código fuente (modelos, utilidades) — plantillas
data/             Datos (sintéticos identificados; experimentales como extensión)
material_didactico/  Manual, ejercicios y rúbrica (divulgación/enseñanza)
```

## Cuadernos

| Cuaderno | Contenido |
|---|---|
| `notebooks/01_fisica.ipynb` | El fenómeno físico: gota en fibra cónica, capilaridad vs. disipación. |
| `notebooks/02_datos.ipynb` | Generación/carga de datos (sintéticos) y exploración. |
| `notebooks/03_pinn.ipynb` | Definición y entrenamiento de la PINN; problema inverso. |
| `notebooks/04_validacion.ipynb` | Validación: solución de referencia, error, residual físico, ruido. |

## Reproducir (cuando esté implementado)

```bash
git clone https://github.com/JalilSynth/captacion-agua-atmosferica-pinn.git
cd captacion-agua-atmosferica-pinn
python -m venv .venv && source .venv/bin/activate   # en Windows: .venv\Scripts\activate
pip install -r requirements.txt
jupyter lab
```

También podrás abrir cada cuaderno en Google Colab (enlaces por agregar cuando estén listos).

## Créditos

- **Autor:** Jalil Muñoz Robles
- **Asesoría:** Dra. Lorena Romero Salazar y Dr. Miguel Mayorga Rojas
- **Adscripción:** Facultad de Ciencias, UAEMÉX
- **Video de divulgación:** (enlace de YouTube por agregar)

## Licencia

- **Código:** MIT (ver `LICENSE`).
- **Material didáctico y contenidos:** CC BY 4.0 (acceso abierto; atribución a los autores).
