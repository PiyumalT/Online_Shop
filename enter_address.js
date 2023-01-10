function validateName() {
    var name = document.getElementById("name").value;
    if (name.length < 5) {
      document.getElementById("nameError").innerHTML = "Name must contain at least 5 letters";
      document.getElementById("name").classList.add("invalid");
      return false;
    } else {
      document.getElementById("nameError").innerHTML = "";
      document.getElementById("name").classList.remove("invalid");
      document.getElementById("name").classList.add("valid");
      return true;
    }
  }
  
  function validateAddress1() {
    var address1 = document.getElementById("address1").value;
    if (address1.length < 6) {
      document.getElementById("address1Error").innerHTML = "Address must contain at least 6 letters";
      document.getElementById("address1").classList.add("invalid");
      return false;
    } else {
      document.getElementById("address1Error").innerHTML = "";
      document.getElementById("address1").classList.remove("invalid");
      document.getElementById("address1").classList.add("valid");
      return true;
    }
  }
  
  function validateAddress2() {
    // No validation needed for this field
    return true;
  }
  
  function validateCity() {
    var city = document.getElementById("city").value;
    if (city.length == 0) {
      document.getElementById("cityError").innerHTML = "City cannot be empty";
      document.getElementById("city").classList.add("invalid");
      return false;
    } else {
      document.getElementById("cityError").innerHTML = "";
      document.getElementById("city").classList.remove("invalid");
      document.getElementById("city").classList.add("valid");
      return true;
    }
  }
  
  function validatePostalCode() {
    var postalCode = document.getElementById("postalCode").value;
    if (postalCode.length == 0) {
      document.getElementById("postalCodeError").innerHTML = "Postal code cannot be empty";
      document.getElementById("postalCode").classList.add("invalid");
      return false;
    } else {
      document.getElementById("postalCodeError").innerHTML = "";
      document.getElementById("postalCode").classList.remove("invalid");
      document.getElementById("postalCode").classList.add("valid");
      return true;
    }
  }
  
  function validateProvince() {
    var province = document.getElementById("province").value;
    if (province.length == 0) {
      document.getElementById("provinceError").innerHTML = "Province cannot be empty";
      document.getElementById("province").classList.add("invalid");
      return false;
    } else {
      document.getElementById("provinceError").innerHTML = "";
      document.getElementById("province").classList.remove("invalid");
      document.getElementById("province").classList.add("valid");
      return true;
    }
  }
  
  function validateCountry() {
    var country = document.getElementById("country").value;
    if (country.length == 0) {
      document.getElementById("countryError").innerHTML = "Country cannot be empty";
      document.getElementById("country").classList.add("invalid");
      return false;
    } else {
      document.getElementById("countryError").innerHTML = "";
      document.getElementById("country").classList.remove("invalid");
      document.getElementById("country").classList.add("valid");
      return true;
    }
  }
  
  function validatePhoneNumber() {
    var phoneNumber = document.getElementById("phoneNumber").value;
    if (phoneNumber.length == 0) {
      document.getElementById("phoneNumberError").innerHTML = "Phone number cannot be empty";
      document.getElementById("phoneNumber").classList.add("invalid");
      return false;
    } else if (isNaN(phoneNumber)) {
      document.getElementById("phoneNumberError").innerHTML = "Phone number cannot contain letters";
      document.getElementById("phoneNumber").classList.add("invalid");
      return false;
    } else if (phoneNumber.length < 9) {
      document.getElementById("phoneNumberError").innerHTML = "Phone number must contain at least 9 characters";
      document.getElementById("phoneNumber").classList.add("invalid");
      return false;
    } else {
      document.getElementById("phoneNumberError").innerHTML = "";
      document.getElementById("phoneNumber").classList.remove("invalid");
      document.getElementById("phoneNumber").classList.add("valid");
      return true;
    }
  }

  function validateForm() {
    if (validateName() && validateAddress1() && validateAddress2() && validateCity() && validatePostalCode() && validateProvince() && validateCountry() && validatePhoneNumber()) {
      checkValues()
      return true;
    } else {
      return false;
    }
  }

  
  
  function setv(){
    document.getElementById("name").value=document.getElementById("h_name").value;
    document.getElementById("address1").value = document.getElementById("h_line1").value;
    document.getElementById("address2").value = document.getElementById("h_line2").value;
    document.getElementById("city").value = document.getElementById("h_city").value;
    document.getElementById("province").value = document.getElementById("h_province").value;
    document.getElementById("country").value = document.getElementById("h_country").value;
    document.getElementById("postalCode").value = document.getElementById("h_zip").value;
    document.getElementById("phoneNumber").value = document.getElementById("h_phone").value;
  }

  window.onload = function() {
    document.getElementById("name").value=document.getElementById("h_name").value;
    document.getElementById("address1").value = document.getElementById("h_line1").value;
    document.getElementById("address2").value = document.getElementById("h_line2").value;
    document.getElementById("city").value = document.getElementById("h_city").value;
    document.getElementById("province").value = document.getElementById("h_province").value;
    document.getElementById("country").value = document.getElementById("h_country").value;
    document.getElementById("postalCode").value = document.getElementById("h_zip").value;
    document.getElementById("phoneNumber").value = document.getElementById("h_phone").value;
  }
  
  function checkValues() {
    var changed = 0;
    if (document.getElementById("address1").value != document.getElementById("h_line1").value) {
      changed = 1;
    } else if (document.getElementById("name").value != document.getElementById("h_name").value) {
      changed = 1;
    } else if (document.getElementById("address2").value != document.getElementById("h_line2").value) {
      changed = 1;
    } else if (document.getElementById("city").value != document.getElementById("h_city").value) {
      changed = 1;
    } else if (document.getElementById("province").value != document.getElementById("h_province").value) {
      changed = 1;
    } else if (document.getElementById("country").value != document.getElementById("h_country").value) {
      changed = 1;
    } else if (document.getElementById("postalCode").value != document.getElementById("h_zip").value) {
      changed = 1;
    } else if (document.getElementById("phoneNumber").value != document.getElementById("h_phone").value) {
      changed = 1;
    }
    //if address changed, set 0, otherwise set address id.
    if(changed=0){
      document.getElementById("address_changed").value = changed=document.getElementById("h_address_id").value;
    }
    document.getElementById("address_changed").value = 0;
  }
  function goBack() {
    history.back();
  }
  
  