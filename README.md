<div align="center">

# 🌱 Trash2Grow

### Clasificación de Residuos con Gamificación · Aplicación Móvil Flutter

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Android Studio](https://img.shields.io/badge/Android_Studio-3DDC84?style=for-the-badge&logo=android-studio&logoColor=white)](https://developer.android.com/studio)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com)
[![License](https://img.shields.io/badge/Licencia-MIT-green?style=for-the-badge)](LICENSE)

> **Aplicación móvil educativa que fomenta la clasificación correcta de residuos sólidos mediante gamificación, una mascota virtual llamada "Semillin" y un jardín digital evolutivo.**

[📱 Demo](#demo) · [🚀 Instalación](#instalación) · [📖 Documentación](#documentación) · [🤝 Equipo](#equipo)

</div>

---

## 📋 Tabla de Contenido

- [Sobre el proyecto](#-sobre-el-proyecto)
- [Funcionalidades](#-funcionalidades)
- [Stack tecnológico](#-stack-tecnológico)
- [Estructura del proyecto](#-estructura-del-proyecto)
- [Instalación y configuración](#-instalación-y-configuración)
- [Uso](#-uso)
- [Capturas de pantalla](#-capturas-de-pantalla)
- [Documentación](#-documentación)
- [Roadmap](#-roadmap)
- [Equipo](#-equipo)
- [Referencias](#-referencias)

---

## 🌍 Sobre el proyecto

El manejo inadecuado de residuos sólidos es uno de los principales problemas ambientales en Colombia y el mundo. **Trash2Grow** nace como respuesta tecnológica a esta problemática, combinando educación ambiental y mecánicas de videojuego para enseñar a los usuarios a clasificar correctamente los residuos de su entorno cotidiano.

### ¿Cómo funciona?

El usuario interactúa con residuos virtuales y debe clasificarlos en tres categorías:

| 🟤 Orgánicos | 🔵 Reciclables | ⚫ No reciclables |
|:---:|:---:|:---:|
| Restos de comida, hojas | Botellas, cartón, metal | Colillas, pañales, papel encerado |

Cada clasificación correcta **genera recompensas** que se reflejan en el sistema de juego, creando un ciclo motivacional de aprendizaje continuo.

---

## ✨ Funcionalidades

### 🎮 Sistema de Gamificación
- **Clasificación en tiempo real** con validación inmediata
- **Sistema de puntos** acumulativos por cada acierto (+10 pts por respuesta correcta)
- **Desbloqueo de plantas** conforme aumenta el puntaje

### 🐾 Mascota Virtual "Semillin"
- Representa visualmente el desempeño del usuario
- Tres estados emocionales: 😊 Feliz · 😐 Neutral · 😢 Triste
- Se actualiza en tiempo real con cada interacción

### 🌱 Impacto

Trash2Grow contribuye a la educación ambiental mediante el uso de tecnología, promoviendo hábitos sostenibles en usuarios jóvenes a través de la gamificación.

### 🌿 Jardín Virtual
- Evoluciona con cada acierto del usuario
- Nuevas plantas se desbloquean progresivamente
- Representa el impacto positivo del aprendizaje ambiental

### 📸 Evidencia con Cámara
- Integración con la cámara del dispositivo
- Permite registrar evidencia fotográfica de clasificaciones reales

### 🏆 Sistema de Recompensas
- Puntos por clasificación correcta
- Bonus por rachas de aciertos
- Evolución visual del entorno del jardín

---

## 🛠 Stack Tecnológico

| Tecnología | Versión | Propósito |
|:---|:---:|:---|
| [Flutter](https://flutter.dev) | 3.x | Framework principal de desarrollo UI |
| [Dart](https://dart.dev) | 3.x | Lenguaje de programación |
| [Android Studio](https://developer.android.com/studio) | Hedgehog+ | IDE, emulador y SDK Manager |
| [Git](https://git-scm.com) | 2.x | Control de versiones local |
| [GitHub](https://github.com) | — | Repositorio remoto y colaboración |
| [image_picker](https://pub.dev/packages/image_picker) | ^1.0.7 | Acceso a cámara y galería |
| [provider](https://pub.dev/packages/provider) | ^6.1.1 | Gestión de estado global |

---

## 📁 Estructura del Proyecto

```
trash2grow/
│
├── lib/
│   ├── main.dart                    # Punto de entrada
│   ├── screens/                     # Pantallas de la aplicación
│   │   ├── home_screen.dart         # Pantalla principal / jardín
│   │   ├── game_screen.dart         # Pantalla de clasificación
│   │   └── results_screen.dart      # Resultados y recompensas
│   │
│   ├── widgets/                     # Componentes reutilizables
│   │   ├── semillin_widget.dart     # Mascota virtual
│   │   ├── garden_widget.dart       # Jardín evolutivo
│   │   ├── waste_card_widget.dart   # Tarjeta de residuo
│   │   └── score_widget.dart        # Marcador de puntaje
│   │
│   ├── models/                      # Modelos de datos
│   │   ├── waste_item.dart          # Entidad residuo
│   │   ├── garden_state.dart        # Estado del jardín
│   │   └── game_score.dart          # Puntuación
│   │
│   └── logic/                       # Lógica de negocio
│       ├── classification_logic.dart
│       ├── semillin_logic.dart
│       └── garden_logic.dart
│
├── assets/
│   ├── images/                      # Imágenes de residuos y plantas
│   └── icons/                       # Íconos de la interfaz
│
├── test/                            # Pruebas unitarias y de widgets
├── pubspec.yaml                     # Dependencias del proyecto
├── README.md                        # Este archivo
└── DOCUMENTACION_TECNICA.md         # Documentación completa del proyecto
```

---

## 🚀 Instalación y Configuración

### Prerrequisitos

Asegúrate de tener instalado:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (versión 3.x o superior)
- [Android Studio](https://developer.android.com/studio) con el SDK de Android configurado
- [Git](https://git-scm.com/downloads)
- Un emulador Android o dispositivo físico

### Verificar instalación de Flutter

```bash
flutter doctor
```

Asegúrate de que todos los checks muestren ✅ antes de continuar.

### Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/trash2grow.git
cd trash2grow
flutter pub get
flutter run
cd trash2grow
```

### Instalar dependencias

```bash
flutter pub get
```

### Ejecutar la aplicación

**En emulador Android:**
```bash
# Iniciar el emulador desde Android Studio, luego:
flutter run
```

**En dispositivo físico:**
```bash
# Activar depuración USB en el dispositivo, conectar y:
flutter run
```

**Construir APK de producción:**
```bash
flutter build apk --release
# El APK se genera en: build/app/outputs/flutter-apk/app-release.apk
```

---

## 📱 Uso

1. **Inicia la aplicación** — verás el jardín y a Semillin en estado neutral.
2. **Presiona "Jugar"** — se mostrará un residuo en pantalla.
3. **Selecciona la categoría correcta** — Orgánico, Reciclable o No reciclable.
4. **Observa el resultado** — Semillin reacciona y el jardín evoluciona.
5. **Acumula puntos** — desbloquea nuevas plantas y mejora tu jardín.
6. **Usa la cámara** — registra evidencias de clasificación real.

---

## 📸 Capturas de Pantalla

> *Agrega aquí las capturas de pantalla de la aplicación una vez esté desarrollada.*

| Pantalla principal | Clasificación | Jardín evolucionado |
|:---:|:---:|:---:|
| *(screenshot)* | *(screenshot)* | *(screenshot)* |

---

## 📖 Documentación

La documentación técnica completa del proyecto se encuentra en:

📄 **[DOCUMENTACION_TECNICA.md](./DOCUMENTACION_TECNICA.md)**

Incluye:
- Objetivos y descripción del sistema
- Arquitectura y estructura del código
- Diagramas Mermaid (flujo, componentes, secuencia)
- Ejemplos de código en Dart
- Plan de pruebas
- Requisitos no funcionales
- Riesgos y mitigaciones
- Propuesta de integración con Supabase

---

## 🗺 Roadmap

### Versión 1.0 — Actual
- [x] Clasificación de residuos con validación
- [x] Mascota Semillin con estados dinámicos
- [x] Jardín virtual con progresión por puntaje
- [x] Sistema de recompensas y puntos
- [x] Integración de cámara para evidencias

### Versión 2.0 — Propuesta futura
- [ ] Autenticación de usuarios con Supabase
- [ ] Persistencia de datos en la nube
- [ ] Sincronización entre dispositivos
- [ ] Tabla de clasificación global (leaderboard)
- [ ] Nuevas categorías de residuos
- [ ] Modo multijugador / retos entre amigos
- [ ] Notificaciones push de recordatorio

---

## 🤝 Equipo

Proyecto desarrollado por el **Grupo 601T** — Universidad de Cundinamarca, Extensión Chía

| Integrante | Rol |
|:---|:---|
| Julian Tovar | Desarrollo Flutter / Lógica de clasificación |
| Michelle Pedraza | Diseño de interfaz / Widget garden |
| Felipe Navarro | Integración GitHub / Lógica Semillin |

**Docente:** *(nombre del docente)*
**Programa:** Ingeniería en Sistemas y Computación
**Semestre:** 2026-I

---

## 📚 Referencias

- Betancourt, C. M., Peña, P., & Pardo, Y. (2024). Gamificación como estrategia para incluir la educación ambiental en el contexto universitario. *Revista Científica*. https://doi.org/10.14483/23448350.21196
- Google. (2025). *Flutter documentation*. https://docs.flutter.dev
- Google. (2024). *Android Studio user guide*. https://developer.android.com/studio
- GitHub. (2024). *GitHub documentation*. https://docs.github.com
- Ministerio de Ambiente y Desarrollo Sostenible. (2022). *Gestión integral de residuos sólidos en Colombia*. https://www.minambiente.gov.co

---

<div align="center">

**🌱 Trash2Grow — Porque cada residuo bien clasificado hace crecer el mundo 🌍**

*Universidad de Cundinamarca · Ingeniería en Sistemas y Computación · 2026*

</div>
