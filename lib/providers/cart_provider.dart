//you have to dowenlaod https://youtu.be/JyJ19DwXCkI?si=L-OafFIvn0ZACG2d

import 'package:riverpod_annotation/riverpod_annotation.dart';
 
import 'package:test1_1/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifire extends _$CartNotifire {
  ///intial value

  @override
  Set<Product> build() {
    return const {};
  }
  //methodes to update state

  void addProduct(Product Product) {
    if (!state.contains(Product)) {
      state = {...state, Product};
    }
  }

  void removeProduct(Product Product) {
    if (state.contains(Product)) {
      state = state.where((p) => p.id != Product.id).toSet();
    }
  }
}

@riverpod
int cartTotal(ref) {
  final cartProducts = ref.watch(cartNotifireProvider);

  int total = 0;

  for (Product product in cartProducts) {
    total += product.price;
  }

  return total;
}
// final cartNotefierProvider = NotifierProvider<CartNotifire, Set<Product>>(() {
//   return CartNotifire();
// });
