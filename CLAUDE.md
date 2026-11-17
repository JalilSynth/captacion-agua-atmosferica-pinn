# CLAUDE.md — Repositorio del proyecto PINN / captación de agua atmosférica

Instrucciones para agentes que trabajen en este repositorio.

## Contexto
- Proyecto UAEMÉX **7386/2026CyS**: captación de agua atmosférica con superficies bioinspiradas y redes neuronales informadas por física (PINN).
- Autor: Jalil Muñoz Robles. Asesoría: Dra. Lorena Romero Salazar y Dr. Miguel Mayorga Rojas. Facultad de Ciencias, UAEMÉX.
- Repositorio **público, de acceso abierto**. Parte de un proyecto mayor de PINN aún no implementado.

## Regla de oro: honestidad científica
- **No inventar resultados, datos ni métricas.** Este repo es un esqueleto; todo lo no implementado se marca como `TODO` o "pendiente".
- Los datos sintéticos deben ser claramente identificados como sintéticos.
- Aplicar siempre "validar antes de interpretar": comparar contra solución de referencia y revisar error, ruido y residual físico antes de concluir.

## Estructura y convenciones
- `notebooks/` cuadernos guía en español, numerados (01..04). Mantener el orden física → datos → PINN → validación.
- `src/` código reutilizable (sin lógica dentro de los notebooks que no esté en src).
- `data/` no subir datos pesados ni privados; usar datos sintéticos o enlaces.
- Estilo Python: nombres claros en español/inglés consistentes, funciones pequeñas, docstrings.
- Dependencias en `requirements.txt`; fijar versiones al implementar.

## Flujo
1. Implementar el modelo físico y el generador de datos sintéticos.
2. Implementar la PINN (directo e inverso) en `src/` y demostrarla en `notebooks/03_pinn.ipynb`.
3. Validar en `notebooks/04_validacion.ipynb`.
4. Documentar resultados en el README y agregar enlaces de Colab.

## Pendientes conocidos
- Toda la implementación de la PINN.
- Datos reales del prototipo (de los asesores), como extensión experimental.
- Material didáctico (manual, ejercicios, rúbrica).
