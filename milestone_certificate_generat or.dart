import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class MilestoneCertificateGenerator extends StatelessWidget {
  final String vendorName;
  final String milestoneTitle;

  const MilestoneCertificateGenerator({super.key, required this.vendorName, required this.milestoneTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📄 Milestone Certificate')),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.download),
          label: const Text('Generate Certificate PDF'),
          onPressed: () async {
            final doc = pw.Document();

            doc.addPage(
              pw.Page(
                build: (context) => pw.Center(
                  child: pw.Text(
                    '$vendorName has achieved "$milestoneTitle"\n\nAwarded by Kisswaar',
                    style: pw.TextStyle(fontSize: 24),
                    textAlign: pw.TextAlign.center,
                  ),
                ),
              ),
            );

            await Printing.layoutPdf(onLayout: (format) => doc.save());
          },
        ),
      ),
    );
  }
}
