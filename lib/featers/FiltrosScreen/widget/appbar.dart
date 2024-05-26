
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(BuildContext context, PageManagments method) => AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: const Row(
        children: [
          Text(
            'Filtros',
            
          ),
        ],
      ),
      actions: [
        GestureDetector(
            onTap: () => method.buttonLimparFiltros(context),
            child: const Text(
              'Limpar filtros',
              style: TextStyle(color: Color(0xFFA1A1A1)),
            )),
        const SizedBox(
          width: 10,
        )
      ],
      leading: GestureDetector(
        onTap: () => method.popScreensToScreen(context),
        child: const Icon(
          Icons.arrow_back,
          color: Color(0xFF3D3D3E),
        ),
      ),
    );
