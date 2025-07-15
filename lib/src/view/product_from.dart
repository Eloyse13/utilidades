import 'package:flutter/material.dart';
import 'package:utilizades/src/controlles/product_controller.dart';
import 'package:utilizades/src/models/product_model.dart';

class ProductFrom extends StatefulWidget {
  final ProductModel? produto;
  final ProductController controller;

  const ProductFrom({super.key, this.produto, required this. controller});

  @override
  State<ProductFrom> createState() => _ProductFormState();
}

class _ProductFormState  extends State<ProductForm> {
  final _formKey = GlobalKey<FormState>();
  final _nomeContoller = TextEditingController();
  final _precoController = TextEditingController();
  final _descricaoController = TextEditingController();

  @override
  void initState(){
   super.initState();
   if(widget.produto != null){
    _nomeContoller.text = widget.produto!.nome;
    _precoController.text = widget.produto!.nome;
    _descricaoController.text = widget.produto!.nome;
   }
  }

  void _salvar() async{
    final produto = ProductModel(
      id: widget.produto?.id,
      nome: _nomeContoller.text.trim(),
       preco: double.tryParse(
       _precoController.text.replaceAll(RegExp(r'[^\d,]'), '').replaceAll(',','.')) ?? 0.0,
        descricao: _descricaoController.text.trim()
      );

      if(widget.produto == null){
        await wiget.controller.criarProduto(produto);
      }else{
        await widget.controller.atualizarProduto(produto);
      }

      if(context.mounted){
        Navigator.pop(context, true);
      }
     }
      

    
   final produto = ProductFrom(
    id: widget.produto?.id, 
    nome: _nomeContoller.text.trim(),
    preco: _precoController.text.replaceAll(RegExp(r'[/d,]'), '').replaceAll(',' , '') ?? 0.0
    descricao: _descricaoController.text.trim()
  );
  }



  @override
  Widget build(BuildContext context) {
    return AlertDialog(
    title: Text(widget.produto == null ? "Novo Produto" : "Editar Produto"),
    content: Form(
      key: _formKey,
      child: Column(
        mainAxisSize:  MainAxisSize.min,
        children: [
          TextFormField(
            controller: _nomeContoller,
            decoration: const InputDecoration(labelText: "Nome do produto"),
            validator: (v) => v!.isEmpty ? "Informe o nome" : null,
          ),
        TextField(
          controller: _precoController,
          keyboardType: TexInputType.numder,
          decoration: context InputDecoration(labelText: "Preço do produto"),
          validator: (v) => v!.isEmpty ? "Informe o preço do produto" : null,
        ),
        TextFormField(
          controller: _descricaoController,
          decoration:  const InputDecoration(labelText: "Descrição do produto"),
          validator: (v) ,
        )
        ],
      ),
    ),
    );
  }
}