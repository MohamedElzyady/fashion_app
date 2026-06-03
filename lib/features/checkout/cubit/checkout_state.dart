class CheckoutState {
  final int quantity;
  final Map<String, dynamic>? address;
  final Map<String, dynamic>? paymentCard;

  CheckoutState({
    this.quantity = 1,
    this.address,
    this.paymentCard,
  });

  CheckoutState copyWith({
    int? quantity,
    Map<String, dynamic>? address,
    Map<String, dynamic>? paymentCard,
  }) {
    return CheckoutState(
      quantity: quantity ?? this.quantity,
      address: address ?? this.address,
      paymentCard: paymentCard ?? this.paymentCard,
    );
  }
}
