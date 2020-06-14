window.onload = function () {
  var goto = "";
  var direction = "";
  $(document).on('click', '.data_row', function () {
    const id = $(this).attr('aria-id');
    if ($(this).attr('aria_name') == "formation") {
      const type = $(this).attr('aria-type');
      console.log("inside information")
      if (type == "Masters") {
        goto = "master";
        direction = "http://localhost:4200/uftam_formation/uftam_master/" + id + "master";
        window.location = "http://localhost:4200/uftam_formation/uftam_master/" + id + "/master";
      } else if (type == "Licence") {
        goto = "license";
        direction = "http://localhost:4200/uftam_formation/uftam_license/" + id + "license";
        window.location = "http://localhost:4200/uftam_formation/uftam_license/" + id + "/license";
      } else {
        goto = "certificat";
        direction = "http://localhost:4200/uftam_formation/uftam_certificat/" + id + "certificat";
        window.location = "http://localhost:4200/uftam_formation/uftam_certificat/" + id + "/certificat";
      }
    } else {
      console.log("we're inside event")
    }
  })
}
