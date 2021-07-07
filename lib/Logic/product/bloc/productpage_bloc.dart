import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uis/Respo/ProductPage/productrepo.dart';
import 'package:uis/models/Product/productm.dart';
part 'productpage_event.dart';
part 'productpage_state.dart';

class ProductpageBloc extends Bloc<ProductpageEvent, ProductpageState> {
  ProdRespo prodRespo = ProdRespo();

  ProductpageBloc() : super(ProductpageInitial()) {
    add(ProductPageInitialEvent());
  }

  @override
  Stream<ProductpageState> mapEventToState(
    ProductpageEvent event,
  ) async* {
    if (event is ProductPageInitialEvent) {
      ProductP productData = await prodRespo.getProduct();
      print(productData);
      yield LoadedProductState(productData: productData);
    }
  }
}
