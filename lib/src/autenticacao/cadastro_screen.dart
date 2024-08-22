import 'package:flutter/material.dart';
import '../configuracao/cores_customizadas.dart';
import 'components/campo_texto_customizado.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tamanho = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CoresCustomizadas.corAppCustomizada,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: CoresCustomizadas.corAppCustomizada,
      body: SingleChildScrollView(
        child: SizedBox(
          height: tamanho.height,
          child: Column(
            children: [
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(fontSize: 35),
                        children: [
                          TextSpan(
                            text: 'Cadastro',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CampoTextoCustomizado(
                      icon: Icons.person,
                      label: 'Nome',
                    ),
                    const CampoTextoCustomizado(
                      icon: Icons.email,
                      label: 'Email',
                    ),
                    const CampoTextoCustomizado(
                      icon: Icons.phone,
                      label: 'Celular',
                    ),
                    const CampoTextoCustomizado(
                      icon: Icons.credit_card,
                      label: 'CPF',
                    ),
                    const CampoTextoCustomizado(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CoresCustomizadas.corAppCustomizada,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          // Ação ao pressionar o botão "Cadastrar Usuário"
                        },
                        child: const Text(
                          'Cadastrar Usuário',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
