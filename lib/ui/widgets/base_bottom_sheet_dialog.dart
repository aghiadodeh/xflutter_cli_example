/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'package:xflutter_cli_example/ui/core/layouts/base_scaffold.dart';
import 'package:xflutter_cli_example/ui/core/layouts/base_scroll_view.dart';
import 'package:xflutter_cli_example/ui/resources/dimensions/dimensions.dart';
import 'package:xflutter_cli_example/ui/widgets/animations/customized_animated_widget.dart';

class BaseBottomSheetDialog {
  static Future<void> showDialog({
    required BuildContext context,
    required Widget child,
    bool isDismissible = true,
    bool enableDrag = true,
    Color? barrierColor,
    Function()? onDismiss,
  }) async {
    return showModalBottomSheet(
      context: context,
      clipBehavior: Clip.hardEdge,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: enableDrag,
      barrierColor: barrierColor ?? Colors.black.withOpacity(0.6),
      isDismissible: isDismissible,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(bottomSheetRadius),
          topRight: Radius.circular(bottomSheetRadius),
        ),
      ),
      builder: (BuildContext context) {
        return Stack(
          children: [
            GestureDetector(onTap: () {
              if (isDismissible) {
                onDismiss?.call();
                Navigator.pop(context);
              }
            }),
            _BaseBottomSheetDialog(
              isDismissible: isDismissible,
              onDismiss: onDismiss,
              child: child,
            ),
          ],
        );
      },
    );
  }
}

class _BaseBottomSheetDialog extends StatelessWidget {
  final Widget child;
  final bool isDismissible;
  final Function()? onDismiss;
  const _BaseBottomSheetDialog({
    required this.child,
    required this.isDismissible,
    this.onDismiss,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true,
      builder: (context, theme) {
        return WillPopScope(
          onWillPop: () => Future.value(isDismissible),
          child: Container(
            padding: EdgeInsets.only(top: MediaQueryData.fromWindow(WidgetsBinding.instance.window).padding.top),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: BaseScrollView(
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                if (isDismissible) {
                                  onDismiss?.call();
                                  Navigator.pop(context);
                                }
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: theme.scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(bottomSheetRadius),
                                topRight: Radius.circular(bottomSheetRadius),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: unitAndHalf),
                                  child: CustomizedAnimatedWidget(
                                    duration: const Duration(milliseconds: 150),
                                    child: child,
                                  ),
                                ),
                                // fix iOS bottom safe area
                                SizedBox(height: MediaQuery.of(context).padding.bottom),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
