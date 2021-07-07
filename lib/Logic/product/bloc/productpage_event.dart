part of 'productpage_bloc.dart';

abstract class ProductpageEvent extends Equatable {
  const ProductpageEvent();

  @override
  List<Object> get props => [];
}
class ProductPageInitialEvent extends ProductpageEvent{}

class UnLoadingProductEvent extends ProductpageEvent{} 

// class LoadedProductEvent extends ProductpageEvent{} 

// Another EVENT FOR PAGE :-  SORT_BY , LISTVIEW , GRIDVIEW ,  FILTER 