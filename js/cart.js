document.addEventListener('DOMContentLoaded', function() {
    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
      button.addEventListener('click', function() {
        var quantityInput = button.parentElement.querySelector('input[type=text]');
        var quantity = parseInt(quantityInput.value);
        if (button.textContent === '+') {
          quantityInput.value = quantity + 1;
        } else if (button.textContent === '-' && quantity > 0) {
          quantityInput.value = quantity - 1;
        }
      });
    });
  });

  function goBack() {
    history.back();
  }