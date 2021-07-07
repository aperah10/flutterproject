part of 'productpage_bloc.dart';

abstract class ProductpageState extends Equatable {
  const ProductpageState();

  @override
  List<Object> get props => [];
}

class ProductpageInitial extends ProductpageState {}

class UnLoadedProductPage extends ProductpageState {}

class LoadedProductState extends ProductpageState {
  ProductP productData;

  LoadedProductState({ required this.productData,});
}
