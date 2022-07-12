var tax = 2
var price = 10
var priceWithTax = price + tax
var quantity = 10
var amount = quantity * priceWithTax
var discount = 10
var final = amount - discount
var secondHand = 2
var finalMinusRefund = final / secondHand

print("固定税 tax： \(tax)")
print("商品價錢 price: \(price)")
print("商品稅後價格 price + tax: \(priceWithTax)")
print("商品總價 quantity * priceWithTax： \(amount)")
print("折扣 Discount: \(discount)")
print("最後總金額 amount - discount: \(final)")
print("退貨價格 final / secondHand: \(finalMinusRefund)")
