// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartTotalHash() => r'8e74a5a23dac97e7a65285f834cb806807d9f64a';

/// See also [cartTotal].
@ProviderFor(cartTotal)
final cartTotalProvider = AutoDisposeProvider<int>.internal(
  cartTotal,
  name: r'cartTotalProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartTotalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CartTotalRef = AutoDisposeProviderRef<int>;
String _$cartNotifireHash() => r'd84feb1611c29006c89fdfda0e200ba922d2c1e7';

/// See also [CartNotifire].
@ProviderFor(CartNotifire)
final cartNotifireProvider =
    AutoDisposeNotifierProvider<CartNotifire, Set<Product>>.internal(
  CartNotifire.new,
  name: r'cartNotifireProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifireHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifire = AutoDisposeNotifier<Set<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
