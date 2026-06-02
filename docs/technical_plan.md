# Anti-Gravity - Plan técnico MVP

## Lectura del SRS

El SRS v4 fija una app mobile nativa iOS/Android, local-first, privacy-first y learning-first. La primera fase no debe construir toda la app, sino una base real y escalable con Flutter 3.x, clean architecture, Riverpod, go_router, Drift/SQLite, permisos de salud preparados, pantallas placeholder funcionales, reglas iniciales y tests.

## Qué se construye primero

1. Shell Flutter con navegación inferior de 5 tabs: Inicio, Plan, Registrar, Insights y Ajustes.
2. Arquitectura modular por feature con capas `domain`, `data` y `presentation`.
3. Entidades y modelos de datos principales del SRS.
4. Motores locales iniciales:
   - `CircadianScoreCalculator`
   - `DailyPlanGenerator`
   - `AdaptiveLearningService`
   - `NutritionRecommendationService`
   - `ShiftWorkService`
5. Repositorios abstractos para HealthKit, Health Connect y uso de pantalla.
6. Implementaciones mock/manual-first para funcionar sin wearable.
7. Base Drift preparada para SQLite local cifrable.
8. Tests unitarios para reglas y edge cases.

## Qué queda como mock

- HealthKit, Health Connect, Oura, Whoop y Garmin devuelven datos mock/manuales mediante `HealthDataRepository`.
- Screen Time / DeviceActivity y UsageStatsManager quedan tras `ScreenUsageRepository`.
- Backend, RevenueCat, Sentry y analytics están declarados como dependencias, pero no inicializados con claves reales.
- El onboarding no persiste todavía en base de datos; queda conectado a la navegación.

## Qué queda preparado para nativo

- iOS: canales `MethodChannel` para HealthKit y permisos, con futura implementación Swift.
- Android: canales `MethodChannel` para Health Connect, WorkManager y permisos, con futura implementación Kotlin.
- Drift usa una factoría con PRAGMA de SQLCipher/equivalente para conectar cifrado cuando se añada la librería nativa.
- Los permisos se modelan por categoría de dato para poder pedir consentimiento granular.

## Decisiones técnicas

- Dominio puro en Dart, sin dependencias Flutter, para testear reglas fuera de UI.
- Recomendaciones prudentes: educativas, no médicas, con explicación y nivel de confianza.
- Local-first: los datos sensibles se modelan para permanecer en SQLite local.
- Motor adaptativo simple: baseline de 14 días, patrones con eventos comparables y confianza progresiva antes de ML.
- Sin bloquear por permisos: la app sigue funcionando con registro manual.
