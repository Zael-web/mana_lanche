import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
         decoration: BoxDecoration(
  color: Theme.of(context).brightness == Brightness.dark
      ? Colors.black
      : const Color(0xFFB23A3A),
),// vermelho padrão
        
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 30),

                // LOGO
                Container(
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        // ignore: deprecated_member_use
        color: Colors.black.withOpacity(0.35),
        blurRadius: 15,
        offset: const Offset(0, 8),
      ),
    ],
  ),
  child: ClipOval(
    child: Image.asset(
      'assets/images/logo.png',
      width: 140,
      height: 140,
      fit: BoxFit.cover,
    ),
  ),
),

                const SizedBox(height: 25),

                // CARD
                Container(
              
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [

                      // NOME
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Nome completo",
                          prefixIcon: const Icon(Icons.person),
                          filled: true,
                          fillColor: 
                          Theme.of(context).inputDecorationTheme.fillColor,
                          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      // EMAIL
                      TextField(
                        decoration: InputDecoration(
                          hintText: "E-mail",
                          prefixIcon: const Icon(Icons.email),
                          filled: true,
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      // TELEFONE
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "Telefone",
                          prefixIcon: const Icon(Icons.phone),
                          filled: true,
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      // SENHA
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Senha",
                          prefixIcon: const Icon(Icons.lock),
                          filled: true,
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      // CONFIRMAR SENHA
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirmar senha",
                          prefixIcon: const Icon(Icons.lock_outline),
                          filled: true,
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // BOTÃO CADASTRAR
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Cadastrar",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // VOLTAR PARA LOGIN
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Já tem conta? ENTRAR",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}