import 'package:bloc/bloc.dart';
import 'package:ecommerce/models/models.dart';
import 'package:ecommerce/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<StartWishlist>(_onStartWishlist);
    on<AddWishlistProduct>(_onAddWishlistProduct);
    on<RemoveWishlistProduct>(_onRemoveWishlistProduct);
  }

  void _onStartWishlist(
    StartWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    emit(WishlistLoading());

    await Future<void>.delayed(const Duration(seconds: 1));

    emit(const WishlistLoaded());
  }

  void _onAddWishlistProduct(
    AddWishlistProduct event,
    Emitter<WishlistState> emit,
  ) async {
    if (state is WishlistLoaded) {
      final state = this.state as WishlistLoaded;

      return emit(WishlistLoaded(
        wishlist: Wishlist(
          products: List.from(state.wishlist.products)..add(event.product),
        ),
      ));
    }
  }

  void _onRemoveWishlistProduct(
    RemoveWishlistProduct event,
    Emitter<WishlistState> emit,
  ) async {
    if (state is WishlistLoaded) {
      final state = this.state as WishlistLoaded;

      emit(WishlistLoaded(
        wishlist: Wishlist(
          products: List.from(state.wishlist.products)..remove(event.product),
        ),
      ));
    }
  }
}
