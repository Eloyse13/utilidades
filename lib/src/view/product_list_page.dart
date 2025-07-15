import 'package:flutter/material.dart';
import 'package:utilizades/src/controlles/product_controller.dart';
import 'package:utilizades/src/models/product_model.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final _controller = ProductController();
  late Future<List<ProductModel>> _produtos;

  @override
  void initState() {
    super.initState();
    _loadaProdutos();
  }

  void _loadaProdutos(){
    setState(() {
      
      _produtos = _controller.fetchProdutos(context);
    });
  }

  void abrirFrom({ProductModel? produto}) async{
    final resultado = await showDialog<bool>(
      context: context,
      builder:(_) = ProductForm(produto: produto, controller: _controller)
       );
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ProductModel>>(
        future: _produtos,
        builder: (_, snapshot){
       if(snapshot.connectionState == ConnectionState.waiting){
       return const Center(child: CircularProgressIndicator());
       }else if(snapshot.hasError){
        return Center(child: Text("Erro: ${snapshot.error}"),);
       }else if(!snapshot.hasData || snapshot.data!.isEmpty){
       return Center(child: Text("Nenhum produto encontrado"),);
        } 

        final produtos = snapshot.data!;
        return ListView.builder(
          itemBuilder: produtos.length,
          itemBuilder: (_, i){
            final p = produtos[i];
            return ListTile(
              title: Text(p.nome),
              subtitle: Text(
                "Preço: ${p.preco}/nDescrição: ${p.descricao}"
              ),
              isThreeLine: true,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => abrirFrom(produto: p),
                     icon: Icon(Icons.edit)
                     ),
                     IconButton(
                      onPressed: () {},
                       icon:Icon(Icons.delete),
                   )
                ],
              ),
            );
          },
         );
       },
      ),
     floatingActionButton: FloatingActionButton(
      onPressed:()  => abrirFrom(),
      child: Icon(Icons.add),
      ), 
    );
  }
}