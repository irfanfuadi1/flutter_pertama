import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cubit/item_cubit.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Item"),
        actions: [
          BlocBuilder<ItemCubit, ItemState>(
            builder: (context, state) {
              int favCount = state.favorites.where((e) => e == true).length;

              return Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.red),
                  Text(
                    favCount.toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 16),
                ],
              );
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.read<ItemCubit>().addItem(),
      ),

      body: BlocBuilder<ItemCubit, ItemState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.15,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        state.items[index],
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        context.read<ItemCubit>().toggleFavorite(index);
                      },
                      icon: Icon(
                        state.favorites[index]
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: state.favorites[index]
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        context.read<ItemCubit>().deleteItem(index);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
