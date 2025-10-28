import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<_OnboardingData> _pages = [
    _OnboardingData(
      title: 'Bem-vindo ao Lookfy',
      description: 'Seu consultor de estilo masculino. Descubra looks e organize seu guarda-roupa.',
      asset: Icons.style,
    ),
    _OnboardingData(
      title: 'Personalize seu perfil',
      description: 'Informe idade, estilo, tamanho e monte seu catálogo pessoal.',
      asset: Icons.person,
    ),
    _OnboardingData(
      title: 'Gere looks e inspire-se',
      description: 'Receba sugestões para cada ocasião e compartilhe seus favoritos.',
      asset: Icons.star,
    ),
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      // TODO: Navegar para tela de cadastro/login ou principal
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) => setState(() => _currentPage = index),
                itemBuilder: (context, index) {
                  final data = _pages[index];
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(data.asset, size: 96, color: Theme.of(context).colorScheme.primary),
                        const SizedBox(height: 32),
                        Text(data.title, style: Theme.of(context).textTheme.headlineMedium),
                        const SizedBox(height: 16),
                        Text(data.description, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_pages.length, (i) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: _currentPage == i ? Theme.of(context).colorScheme.primary : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                onPressed: _nextPage,
                child: Text(_currentPage == _pages.length - 1 ? 'Começar' : 'Próximo'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingData {
  final String title;
  final String description;
  final IconData asset;

  _OnboardingData({required this.title, required this.description, required this.asset});
}
