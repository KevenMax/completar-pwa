//= require c3.min.js
//= require d3.min.js
//= require Chart.min.js

function alertComplete(notice){
	setTimeout(function() {
      toastr.options = {
        closeButton: true,
        progressBar: true,
        showMethod: 'slideDown',
        timeOut: 4000
      };
        toastr.info(notice, '');
    }, 000);
}

