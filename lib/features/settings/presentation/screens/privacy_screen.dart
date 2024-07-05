import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/settings/repositories/domain/entities/privacy_policy.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.privacy_policy,
      ),
      body: const _PrivacyView(),
    );
  }
}

class _PrivacyView extends StatefulWidget {
  const _PrivacyView();

  @override
  State<_PrivacyView> createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<_PrivacyView> {
  final List<PrivacyPolicy> privacyPolicies = [
    PrivacyPolicy(
      title: 'Recolección de Información',
      content:
          'Recopilamos información personal como nombres, direcciones, números de teléfono y correos electrónicos para procesar reservas y pagos.',
    ),
    PrivacyPolicy(
      title: 'Uso de la Información',
      content:
          'Utilizamos la información para completar reservas, procesar pagos, mejorar nuestros servicios y comunicarnos con los usuarios sobre ofertas especiales.',
    ),
    PrivacyPolicy(
      title: 'Protección de la Información',
      content:
          'Implementamos medidas de seguridad para proteger la información personal contra accesos no autorizados y usos indebidos.',
    ),
    PrivacyPolicy(
      title: 'Reservas',
      content:
          'Los usuarios deben proporcionar información personal como nombres y detalles de contacto para realizar reservas.',
    ),
    PrivacyPolicy(
      title: 'Procesamiento de Pagos',
      content:
          'Los datos financieros se recogen para procesar pagos de manera segura a través de nuestros proveedores de servicios de pago.',
    ),
    PrivacyPolicy(
      title: 'Comunicaciones Directas',
      content:
          'Nos comunicamos con los usuarios por correo electrónico o notificaciones dentro de la aplicación para confirmar reservas, actualizar sobre cambios y enviar ofertas promocionales.',
    ),
    PrivacyPolicy(
      title: 'Opciones de Comunicación',
      content:
          'Los usuarios pueden optar por no recibir comunicaciones de marketing directo en cualquier momento.',
    ),
    PrivacyPolicy(
      title: 'Derechos del Usuario',
      content:
          'Los usuarios tienen derecho a acceder, rectificar, cancelar y oponerse al tratamiento de sus datos personales.',
    ),
    PrivacyPolicy(
      title: 'Contacto',
      content:
          'Para cualquier consulta sobre privacidad y protección de datos, los usuarios pueden contactar con nuestro equipo de soporte o responsable de protección de datos.',
    )
  ];

  List<bool> _isExpandedList = [];

  @override
  void initState() {
    super.initState();
    _isExpandedList = List<bool>.filled(privacyPolicies.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: AppConstants.defaultPadding),
            // Text(
            //   'Políticas de Privacidad',
            //   style: AppStyles.heading03(
            //     color: AppColors.mainColor,
            //   ),
            // ),
            ExpansionPanelList(
              elevation: 0,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isExpandedList[index] = !_isExpandedList[index];
                });
              },
              children: privacyPolicies.asMap().entries.map((entry) {
                int index = entry.key;
                PrivacyPolicy policy = entry.value;
                return ExpansionPanel(
                  headerBuilder: (_, bool isExpanded) {
                    return ListTile(title: Text(policy.title), contentPadding: EdgeInsets.zero);
                  },
                  body: ListTile(
                    title: Text(policy.content),
                    contentPadding: EdgeInsets.zero,
                    minTileHeight: 0,
                  ),
                  isExpanded: _isExpandedList[index],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
