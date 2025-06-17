
import 'package:e_commerse_app/cubits/product_cubit/product_cubit.dart';
import 'package:e_commerse_app/cubits/product_cubit/product_state.dart';
import 'package:e_commerse_app/views/edit_product_page.dart';
import 'package:e_commerse_app/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E-Commerce App')),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductLoaded) {
            final products = state.products;

            return GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 Cards per row
                crossAxisSpacing: 10, // horizontal spacing
                mainAxisSpacing: 10, // vertical spacing
                childAspectRatio: 0.75, // controls height vs width
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return ProductCard(
                  product: product,
                  onDelete: () {
                   
                  },
                  onEdit: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => EditProductPage(),
                      ),
                    );
                  },
                );
              },
            );
          } else if (state is ProductError) {
            return const Center(child: Text('Something went wrong 😢'));
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

