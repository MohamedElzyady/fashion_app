import 'package:flutter_bloc/flutter_bloc.dart';
import 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutState());

  void updateQuantity(int quantity) {
    emit(state.copyWith(quantity: quantity));
  }

  void saveAddress(Map<String, dynamic>? address) {
    emit(state.copyWith(address: address));
  }

  void savePaymentCard(Map<String, dynamic>? card) {
    emit(state.copyWith(paymentCard: card));
  }

  void resetCheckout() {
    emit(CheckoutState());
  }
}
