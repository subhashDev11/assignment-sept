import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subhash_chandra_s_application3/state/upload_image_provider.dart';
import 'app.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_) => UploadImageProvider(),
          ),
        ],
        child: App(),
    );
  }
}
