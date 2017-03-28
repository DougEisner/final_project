$(document).on('DOMContentLoaded', function() {
  const $license = $('#new_license')
  const $addressLicense = $('#license_address')[0];
  const $acceptLicense = $('#license_accept')[0];
  const $submitLicense = $('.submit-license');

  $license.change(function() {
    if ( $addressLicense.value !== "" && $acceptLicense.checked) {
      $submitLicense.removeClass('disabled');
    } else {
      $submitLicense.addClass('disabled');
    }
  });


  const paymentBtn = $('.stripe-button-el');
  paymentBtn[0].firstChild.innerText = "Pay Now"
  paymentBtn.addClass('waves-effect')
});
