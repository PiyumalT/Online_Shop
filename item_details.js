function increaseQuantity() {
    var quantityInput = document.getElementById("quantity");
    var currentQuantity = parseInt(quantityInput.value);
    quantityInput.value = currentQuantity + 1;
    validateQuantity();
  }
  
  function decreaseQuantity() {
    var quantityInput = document.getElementById("quantity");
    var currentQuantity = parseInt(quantityInput.value);
    if (currentQuantity > 1) {
      quantityInput.value = currentQuantity - 1;
    }
    validateQuantity();
  }

//Change image functions. need modifications
var images = ["image1.jpg", "image2.jpg", "image3.jpg"];
var currentImage = 0;

function previousImage() {
  currentImage--;
  if (currentImage < 0) {
    currentImage = images.length - 1;
  }
  updateImage();
}

function nextImage() {
  currentImage++;
  if (currentImage >= images.length) {
    currentImage = 0;
  }
  updateImage();
}

function updateImage() {
  var imageElement = document.getElementById("item-image");
  imageElement.src = images[currentImage];
}

//to remove
function validate_all(){
  return false;
}

function setOptions(value) {
  var optionsInput = document.getElementById("h_options");
  optionsInput.value = value;
}

function setQuantity() {
  var quantityInput = document.getElementById("h_qty");
  quantityInput.value = document.getElementById("quantity").value ;
}
function validateQuantity(){
  setQuantity()
  if(parseInt(document.getElementById("h_qty").value)>parseInt(document.getElementById("available_qty").value)){
    document.getElementById("qtyError").textContent="Available quntity lover than selected quntity";
    document.getElementById("h_qty").value=document.getElementById("quantity").value;
    return false;
  }
  else{
    document.getElementById("qtyError").textContent="";
  }
  
}
