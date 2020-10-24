class Transection {
  final int id, consumerId, productId, quantity, price;
  Transection({
    this.id,
    this.consumerId,
    this.productId,
    this.quantity,
    this.price,
  });
}

// Sample Consumers
List<Transection> trans = [
  Transection(
    id: 1,
    consumerId: 2,
    productId: 15,
    quantity: 5,
    price: 259,
  ),
];
