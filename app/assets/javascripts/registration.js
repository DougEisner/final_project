$(document).on('turbolinks:load', function() {
  var $phone = $('#user_contact_phone').parent();
  var $organization = $('#user_organization').parent();
  var $entity = $('#user_entity_size').parents('.input-field');
  var elements = [$phone, $organization, $entity];

  var roles = {
    role_academic: [$organization],
    role_business: [$phone, $organization, $entity],
    role_other: []
  }

  $('.user-role').click(toggleRole);

  function toggleRole(e) {
    if (e.target.tagName == "INPUT") return;

    elements.forEach(function(el) {
      el.val("");
      el.addClass("hide");
    });

    var role  = e.target.getAttribute('for');
    roles[role].forEach(function(el) {
      el.removeClass("hide");
    });
  }

});
