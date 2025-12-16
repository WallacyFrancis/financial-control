import 'package:flutter/material.dart';

/// Paleta de cores do aplicativo de controle financeiro
/// Seguindo o design system definido
class AppColors {
  AppColors._();

  // Cores primárias
  static const Color primary = Color(0xFF2962FF); // Azul vibrante
  static const Color background = Color(0xFFF4F5F7); // Cinza claro para fundos
  static const Color surface = Color(0xFFFFFFFF); // Branco para cartões
  static const Color text = Color(0xFF172B4D); // Azul escuro para texto

  // Cores de estado
  static const Color income = Color(0xFF00C853); // Verde para entradas
  static const Color expense = Color(0xFFFF5252); // Vermelho para saídas

  // Cores auxiliares
  static const Color error = Color(0xFFFF5252);
  static const Color success = Color(0xFF00C853);
  static const Color warning = Color(0xFFFFA726);
  static const Color info = Color(0xFF2962FF);

  // Cores de texto
  static const Color textPrimary = Color(0xFF172B4D);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textDisabled = Color(0xFF9CA3AF);

  // Cores de fundo
  static const Color backgroundPrimary = Color(0xFFF4F5F7);
  static const Color backgroundSecondary = Color(0xFFFFFFFF);
  static const Color backgroundDisabled = Color(0xFFE5E7EB);
}

