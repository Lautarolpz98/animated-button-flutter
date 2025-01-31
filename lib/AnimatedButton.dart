import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool isPressed = false; // Estado del botón

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isPressed = !isPressed; // Cambia el estado
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400), // Duración de la animación
          curve: Curves.easeInOut, // Curva de animación
          width: isPressed ? 80 : 60, // Cambio de tamaño
          height: isPressed ? 80 : 60,
          decoration: BoxDecoration(
            color: isPressed ? Colors.blue : Colors.green, // Cambio de color
            shape: isPressed
                ? BoxShape.circle
                : BoxShape.rectangle, // Cambio de forma
          ),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Icon(
              isPressed ? Icons.check : Icons.play_arrow, // Cambio de icono
              key: ValueKey<bool>(isPressed),
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
