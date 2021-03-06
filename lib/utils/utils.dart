import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/scan_model.dart';

launchURL( BuildContext context, ScanModel scan  ) async {

  final url = scan.valor;

  if ( scan.tipo == 'http' ) {
    // Abrir el sitio web
   
      await launch(url);
   
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan );
  }

}