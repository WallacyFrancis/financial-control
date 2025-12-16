import 'package:flutter/foundation.dart';

/// ViewModel para a tela de login
/// Gerencia o estado e a lógica de apresentação
class LoginViewModel extends ChangeNotifier {
  String _email = '';
  String _password = '';
  bool _isPasswordVisible = false;
  bool _isLoading = false;
  String? _errorMessage;

  // Getters
  String get email => _email;
  String get password => _password;
  bool get isPasswordVisible => _isPasswordVisible;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get canLogin => _email.isNotEmpty && _password.isNotEmpty && !_isLoading;

  /// Atualiza o email
  void updateEmail(String value) {
    _email = value.trim();
    _errorMessage = null;
    notifyListeners();
  }

  /// Atualiza a senha
  void updatePassword(String value) {
    _password = value;
    _errorMessage = null;
    notifyListeners();
  }

  /// Alterna a visibilidade da senha
  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  /// Valida o formato do email
  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  /// Realiza o login
  Future<bool> login() async {
    // Validações
    if (_email.isEmpty) {
      _errorMessage = 'Por favor, informe seu email';
      notifyListeners();
      return false;
    }

    if (!_isValidEmail(_email)) {
      _errorMessage = 'Por favor, informe um email válido';
      notifyListeners();
      return false;
    }

    if (_password.isEmpty) {
      _errorMessage = 'Por favor, informe sua senha';
      notifyListeners();
      return false;
    }

    if (_password.length < 6) {
      _errorMessage = 'A senha deve ter pelo menos 6 caracteres';
      notifyListeners();
      return false;
    }

    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      // Simula uma chamada de API
      await Future.delayed(const Duration(seconds: 2));

      // TODO: Implementar integração real com API de autenticação
      // Por enquanto, validação simples
      if (_email == 'admin@example.com' && _password == '123456') {
        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _isLoading = false;
        _errorMessage = 'Email ou senha incorretos';
        notifyListeners();
        return false;
      }
    } catch (e) {
      _isLoading = false;
      _errorMessage = 'Erro ao realizar login. Tente novamente.';
      notifyListeners();
      return false;
    }
  }

  /// Limpa o estado
  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }
}

