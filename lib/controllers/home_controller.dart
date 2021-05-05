import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString nome1 = 'Nome'.obs;
  RxString nome2 = 'Nome'.obs;

  RxInt valor1 = 0.obs;
  RxInt valor2 = 0.obs;

  void adicionarPontos1() {
    if (valor1.value >= 12) {
      return;
    }
    valor1.value++;
  }

  void removerPontos1() {
    if (valor1.value <= 0) {
      return;
    }
    valor1.value--;
  }

  void adicionarPontos2() {
    if (valor2.value >= 12) {
      return;
    }
    valor2.value++;
  }

  void removerPontos2() {
    if (valor2.value <= 0) {
      return;
    }
    valor2.value--;
  }

  void jogadaTrucada1() {
    if (valor1.value >= 12) {
      return;
    }
    valor1.value += 3;
  }

  void jogadaTrucada2() {
    if (valor2.value >= 12) {
      return;
    }
    valor2.value += 3;
  }

  void limparDados() {
    valor1.value = 0;
    valor2.value = 0;
    nome1.value = 'Nome';
    nome2.value = 'Nome';
  }
}
