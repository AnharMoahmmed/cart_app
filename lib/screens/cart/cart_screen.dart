import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1_1/providers/cart_provider.dart';
 
// import 'package:riverpod_files/providers/products_provider.dart'; //no need for reducecartProvider

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifireProvider);

    final total = ref.watch(cartTotalProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: cartProducts.map((product) {
                return Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        product.image,
                        width: 60,
                        height: 60.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('${product.title}... '),
                      const Expanded(child: SizedBox()),
                      Text('\$ ${product.price}')
                    ],
                  ),
                );
              }).toList(), // output cart products here
            ),
            Text('tolal = $total'),

            // output totals here
          ],
        ),
      ),
    );
  }
}
