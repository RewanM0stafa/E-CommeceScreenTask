import 'package:ecommerce_screen/features/cart_list.dart';
import 'package:ecommerce_screen/features/welcome_home.dart';
import 'package:go_router/go_router.dart';

import '../../features/e_commerce_screen.dart';
import '../../features/product_specification.dart';

final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
        ),

        GoRoute(
            path: '/eCommerce',
            builder: (context, state) => const ECommerceScreen(),
        ),

        GoRoute(
            path: '/prodSpec',
            builder: (context, state) => const ProductSpecification(),
        ),

        GoRoute(
            path: '/cartList',
            builder: (context, state) => const CartList(),
        ),

    ],
);
