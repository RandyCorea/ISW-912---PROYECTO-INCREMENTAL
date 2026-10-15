# Expediente del Proyecto: Semana 5
## Sistema Web de Gestión de Citas y Automatización de Comisiones para Barbería

---

## Sección 04: Ciclo de Vida del Proyecto y Primer Sprint

### 1. Ciclo de Vida del Proyecto
El proyecto adopta un **ciclo de vida adaptativo (ágil)**. Se seleccionó este enfoque debido a que la naturaleza de una aplicación web para un negocio local requiere flexibilidad ante los requerimientos diarios, entregas tempranas de valor funcional (incrementos) y la capacidad de inspeccionar y adaptar el producto constantemente conforme el dueño de la barbería evalúa el sistema en funcionamiento.

* **De dónde viene el problema:** La necesidad surge de la ineficiencia operativa de un negocio tradicional, caracterizado por el solapamiento de reservas en horarios pico, el uso de agendas en papel y la propensión a errores humanos al calcular manualmente las comisiones semanales de los barberos[cite: 1].
* **Fases del ciclo de vida:**
  1. **Inicio:** Definición del problema, viabilidad técnica y redacción inicial del Project Charter (Semanas 3-4).
  2. **Planificación:** Análisis de restricciones, mapeo de stakeholders, diseño de la arquitectura de base de datos relacional y priorización del Product Backlog (Semanas 4-5).
  3. **Ejecución (Sprints Iterativos):** Desarrollo incremental del software dividido en ciclos cortos de construcción, integración y prueba (Semanas 6 a 12).
  4. **Cierre:** Validación final del incremento, despliegue oficial en el entorno de producción (cPanel) y entrega del expediente completo (Semana 13).

---

### 2. Planificación del Primer Sprint

* **Sprint Goal (Objetivo del Sprint):** 
  Establecer la infraestructura técnica base de la aplicación y desarrollar el módulo de autenticación segura para el panel administrativo, garantizando el acceso controlado a los datos del sistema[cite: 1].

* **Historias de Usuario / Tareas Atacadas Primero:**
  1. **Historia Técnica 1:** *Como desarrollador, quiero estructurar la base de datos relacional en MySQL y configurar el archivo de conexión en PHP para habilitar la persistencia de datos del sistema.*
  2. **Historia Funcional 2:** *Como Administrador, quiero iniciar sesión en el sistema web mediante un formulario seguro de usuario y contraseña para acceder al panel de control privado[cite: 1].*

* **Justificación de la Selección:**
  Estas tareas se abordan primero porque representan los cimientos técnicos indispensables del software[cite: 1]. Sin una base de datos debidamente estructurada y un sistema de control de acceso seguro, no es técnicamente viable construir ni proteger las funcionalidades posteriores del proyecto (como el calendario de citas o el cálculo de comisiones financieras)[cite: 1].