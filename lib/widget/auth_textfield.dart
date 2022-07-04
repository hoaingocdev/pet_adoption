part of sign_in;

enum TextType { password, email, normal, phone }

class AuthTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextType textType;
  final bool enabled;

  final String labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? iconColor;
  final bool obscureText;
  final bool isRequired;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  const AuthTextField({
    Key? key,
    required this.labelText,
    this.suffixIcon,
    this.iconColor,
    this.textType = TextType.normal,
    this.obscureText = false,
    this.isRequired = false,
    this.inputFormatters,
    this.validator,
    this.controller,
    this.onChanged,
    this.enabled = true,
    this.prefixIcon,
  }) : super(key: key);

  String? validate(String? value) {
    switch (textType) {
      case TextType.phone:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập số điện thoại';
        }
        if (value?.length != 10) {
          return 'Số điện thoại không hợp lệ';
        }
        return null;
      case TextType.password:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập mật khẩu';
        }
        return null;
      case TextType.email:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập email';
        }
        if (!Validator.validEmail(value ?? '')) {
          return 'Email không đúng định dạng';
        }
        return null;
      case TextType.normal:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập thông tin';
        }
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      enabled: enabled,
      onChanged: onChanged,
      controller: controller,
      validator: validator ?? validate,
      obscureText: obscureText,
      cursorColor: Cl.violet,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        iconColor: iconColor,
        suffixIcon: suffixIcon,
        fillColor: Cl.grey,
        labelText: labelText,
        labelStyle: St.body13600.copyWith(color: Cl.grey),
        floatingLabelStyle: St.body13600.copyWith(color: Cl.violet),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: Cl.violet, width: 3),
        ),
        // OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   borderSide: BorderSide.none,
        // ),
      ),
    );
  }
}
