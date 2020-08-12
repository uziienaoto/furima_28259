document.addEventListener('DOMContentLoaded', function(e){
  const price = document.getElementById("item-price");
  price.addEventListener("keyup", function() {
    console.log('1');
    console.log(price.value) 
    console.log((price.value / 10));
    
    const tax = price.value / 10; 
    console.log(Math.round(tax));
    const tax_price = document.getElementById('add-tax-price');
    tax_price.textContent = Math.round(tax);
    
    const profit = document.getElementById('profit');
    const profit_value = price.value * 0.9
    console.log(Math.round(profit_value));
    profit.textContent = (Math.round(profit_value));
  })
});

