import 'package:dio/dio.dart';

class EmailService {
  static final _dio = Dio();

  static Future sendContactMessage(String email, String message) async {
    await _dio.post(
      'https://api.emailjs.com/api/v1.0/email/send',
      data: {
        'service_id': 'service_gupyl0b',
        'template_id': 'template_nanxkqs',
        'user_id': 'c54s8e3cKlIAuP3cr',
        'template_params': {
          'user_email': email,
          'user_message': message,
        }
      },
      options: Options(
        headers: {'Content-Type': 'application/json'},
      ),
    );
  }
}
