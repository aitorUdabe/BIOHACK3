# Anti-Gravity

Base Flutter para una app mobile iOS/Android de biohacking circadiano, nutrición adaptativa y aprendizaje personal, creada a partir de `srs_anti_gravity_v4.txt`.

## Estado actual

- Arquitectura limpia y modular bajo `lib/features`.
- Navegación base con `go_router` y shell de 5 tabs.
- Tema claro/oscuro con Material 3.
- Modelos principales del SRS en Dart.
- Servicios iniciales para score circadiano, plan diario, nutrición, aprendizaje adaptativo y turnos de noche.
- Drift/SQLite local preparado para cifrado.
- Repositorios mock/manuales para HealthKit, Health Connect y Screen Time.
- Pantallas placeholder funcionales para onboarding, dashboard, plan, score, registros y ajustes.
- Tests unitarios preparados para reglas normales y edge cases.

## Requisitos

- Flutter 3.x
- Dart 3.3+
- iOS 16+
- Android 10+

> En este entorno no estaba instalado Flutter, por eso el proyecto se ha creado manualmente. Si faltan los shells nativos `ios/` y `android/`, genéralos con:

```bash
flutter create --platforms=ios,android .
```

## Instalación

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

## Ejecutar app

```bash
flutter run
```

## Ejecutar tests

```bash
flutter test
```

## Arquitectura

```text
lib/
  app/                 Shell, router y tema
  core/                Constantes, errores, result, permisos, logging y utilidades
  features/            Módulos clean por dominio
  shared/              Widgets, componentes y estilos reutilizables
```

Cada feature sigue:

```text
data/
  datasources/
  models/
  repositories/
domain/
  entities/
  repositories/
  usecases/
presentation/
  controllers/
  screens/
  widgets/
```

## Decisiones técnicas

- Flutter + Dart como app mobile compilada, no PWA ni WebView.
- Riverpod para estado y dependencias.
- go_router para navegación declarativa.
- Drift + SQLite para persistencia local offline-first.
- Cifrado local preparado con SQLCipher/equivalente.
- Integraciones de salud desacopladas mediante repositorios y canales nativos.
- Backend mínimo opcional; ningún dato sensible se envía sin consentimiento explícito.

## Privacidad

- Los datos de sueño, HRV, nutrición, salud y pantalla se consideran sensibles.
- La app debe funcionar sin wearable y sin permisos no esenciales.
- La analítica debe excluir datos sensibles.
- Cualquier sincronización cloud futura requiere consentimiento granular.
- Próximos pasos: implementar borrado total y exportación JSON/CSV desde `PrivacyService`.

## Próximos pasos

1. Generar shells nativos con `flutter create --platforms=ios,android .`.
2. Ejecutar `flutter pub get` y `build_runner`.
3. Implementar almacenamiento seguro real de la clave de cifrado.
4. Conectar Drift a repositorios concretos.
5. Implementar módulos Swift/Kotlin para HealthKit, Health Connect, BackgroundTasks y WorkManager.
6. Añadir persistencia real de onboarding y consentimiento.
