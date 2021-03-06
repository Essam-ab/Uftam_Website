window.onload = function () {
  $('.navbar').removeClass('changed');
  $('.navbar-brand').removeClass('changed');
  $('.navbar-nav').removeClass('changed');
  var goto = "";
  var direction = "";
  $(document).on('click', '.data_row', function () {
    const id = $(this).attr('aria-id');
    if ($(this).attr('aria_name') == "formation") {
      const type = $(this).attr('aria-type');
      if (type == "Masters") {
        goto = "master";
        window.location = "http://localhost:4200/uftam_formation/uftam_master/" + id + "/master";
      } else if (type == "Licence") {
        goto = "license";
        window.location = "http://localhost:4200/uftam_formation/uftam_license/" + id + "/license";
      } else {
        goto = "certificat";
        window.location = "http://localhost:4200/uftam_formation/uftam_certificate/" + id + "/certificate";
      }
    } else {
      window.location = "http://localhost:4200/uftam_event/" + id;
    }
  })
}
