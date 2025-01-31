# Botón Animado en Flutter

## 📌 Descripción
Este es un widget en Flutter que crea un botón animado. El botón cambia su **tamaño, forma, color e ícono** cuando se presiona, proporcionando una experiencia interactiva fluida.

## ✨ Características
- **Transición de tamaño animada** (60px ↔ 80px)
- **Cambio de color animado** (Verde ↔ Azul)
- **Cambio de forma animado** (Rectángulo ↔ Círculo)
- **Cambio de ícono animado** (Play ↔ Check)
- Usa **AnimatedContainer** y **AnimatedSwitcher** para efectos suaves

## 🛠 Tecnologías Utilizadas
- Flutter
- Dart
- Material Design

## 🚀 Cómo Funciona
1. El botón está envuelto dentro de un `GestureDetector` para detectar toques del usuario.
2. Cuando se presiona, la función `setState` actualiza el booleano `isPressed`.
3. `AnimatedContainer` realiza una transición fluida en el **tamaño, forma y color** del botón.
4. `AnimatedSwitcher` cambia suavemente entre los íconos usando una **ScaleTransition**.
5. Una función personalizada `handleTap()` registra un mensaje cuando el botón es presionado.

## 📜 Implementación del Código
```dart
import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool isPressed = false;

  void handleTap(String message) {
    print(message);
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => handleTap(isPressed ? "Botón desactivado" : "Botón activado"),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          width: isPressed ? 80 : 60,
          height: isPressed ? 80 : 60,
          decoration: BoxDecoration(
            color: isPressed ? Colors.blue : Colors.green,
            shape: isPressed ? BoxShape.circle : BoxShape.rectangle,
          ),
          child: Icon(
            isPressed ? Icons.check : Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
```

## 🎯 Uso
1. Copia y pega el código anterior en un archivo Dart.
2. Usa el widget `AnimatedButton` dentro de cualquier aplicación Flutter.
3. Ejecuta la app y toca el botón para ver las animaciones en acción.

---
💡 **Autor:** Desarrollado para proyectos de portafolio en Flutter. Siéntete libre de personalizar y mejorar.

