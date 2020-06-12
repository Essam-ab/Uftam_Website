window.onload = function () {
  $(document).on('click', '.data_row', function () {
    const id = $(this).attr('aria-id');
    if ($(this).attr('aria_name') == "formation") {
      const type = $(this).attr('aria-type');
      console.log("inside information")
      if (type == "Masters") {
        window.location.replace("/uftam_formation/uftam_master/" + id + "master")
      } else if (type == "Licence") {
        window.location.replace("/uftam_formation/uftam_license/" + id + "license")
      } else
        window.location.replace("http://localhost:4200/uftam_formation/uftam_certificat/" + id + "certificat")
    } else {
      console.log("we're inside event")
    }
  })
}
