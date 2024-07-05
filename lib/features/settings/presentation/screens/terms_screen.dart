import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/settings/repositories/domain/entities/terms_conditions.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.terms_and_conditions,
      ),
      body: const _TermsView(),
    );
  }
}

class _TermsView extends StatefulWidget {
  const _TermsView();

  @override
  State<_TermsView> createState() => _TermsViewState();
}

class _TermsViewState extends State<_TermsView> {
  final List<TermsConditions> privacyPolicies = [
    TermsConditions(
      title: 'Uso de la Aplicación',
      content:
          'Al utilizar nuestra aplicación, los usuarios aceptan cumplir con estos términos y condiciones, así como todas las leyes y regulaciones aplicables.',
    ),
    TermsConditions(
      title: 'Registro de Usuario',
      content:
          'Los usuarios deben proporcionar información precisa y completa durante el registro. Cada usuario es responsable de mantener la confidencialidad de su cuenta y contraseña.',
    ),
    TermsConditions(
      title: 'Responsabilidades del Usuario',
      content:
          'Los usuarios deben utilizar la aplicación de manera responsable y respetar los derechos de otros usuarios y terceros. No deben realizar actividades que puedan dañar, interferir con o afectar negativamente la aplicación.',
    ),
    TermsConditions(
      title: 'Reservas y Pagos',
      content:
          'Las reservas realizadas a través de nuestra aplicación están sujetas a disponibilidad y confirmación. Los usuarios deben proporcionar información válida y precisa para procesar pagos de manera oportuna.',
    ),
    TermsConditions(
      title: 'Política de Cancelación',
      content:
          'Los usuarios deben revisar y aceptar nuestras políticas de cancelación al realizar una reserva. Las políticas pueden variar según el proveedor de servicios.',
    ),
    TermsConditions(
      title: 'Derechos de Propiedad Intelectual',
      content:
          'El contenido de la aplicación, incluidos textos, imágenes, gráficos y logotipos, está protegido por derechos de autor y otros derechos de propiedad intelectual. No está permitida la reproducción o distribución no autorizada.',
    ),
    TermsConditions(
      title: 'Limitación de Responsabilidad',
      content:
          'Nos esforzamos por proporcionar información precisa y servicios de calidad, pero no garantizamos la exactitud, integridad o adecuación de la información y servicios ofrecidos. No somos responsables de pérdidas o daños directos o indirectos derivados del uso de nuestra aplicación.',
    ),
    TermsConditions(
      title: 'Modificaciones de los Términos y Condiciones',
      content:
          'Nos reservamos el derecho de modificar estos términos y condiciones en cualquier momento y sin previo aviso. Los cambios entrarán en vigencia al ser publicados en la aplicación.',
    ),
    TermsConditions(
      title: 'Jurisdicción y Ley Aplicable',
      content:
          'Estos términos y condiciones se rigen por las leyes del estado/provincia/país correspondiente. Cualquier disputa relacionada con estos términos y condiciones será resuelta exclusivamente por los tribunales competentes en dicha jurisdicción.',
    ),
    TermsConditions(
      title: 'Contacto',
      content:
          'Para cualquier consulta sobre estos términos y condiciones, los usuarios pueden contactar con nuestro equipo de soporte a través de los medios proporcionados en la aplicación.',
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
                TermsConditions policy = entry.value;
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
