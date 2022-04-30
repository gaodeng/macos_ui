import '../../macos_ui.dart';
import '../library.dart';

class MacosTab extends StatelessWidget {
  const MacosTab({
    Key? key,
    required this.label,
    required this.onTap,
    this.active = false,
  }) : super(key: key);

  final String label;
  final VoidCallback onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    final brightness = MacosTheme.brightnessOf(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
          color: active
              ? brightness.resolve(
                  Colors.white,
                  Color.fromRGBO(95, 96, 97, 1.0),
                )
              : Colors.transparent,
        ),
        child: Text(label),
      ),
    );
  }
}