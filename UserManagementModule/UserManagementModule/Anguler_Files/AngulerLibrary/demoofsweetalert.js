swal('Oops...', 'Something went wrong!', 'error');
swal('Oops...', 'Something went wrong!', 'error');
swal('Any fool can use a computer');
swal({
    title: 'Auto close alert!',
    text: 'I will close in 2 seconds.',
    timer: 2000
});
swal({
    title: 'HTML example',
    html:
      'You can use <b>bold text</b>, ' +
      '<a href="//github.com">links</a> ' +
      'and other HTML tags'
});
swal({
    title: 'jQuery HTML example',
    html: $('<div>').addClass('some-class').text('jQuery is everywhere.')
});
swal('The Internet?', 'That thing is still around?');
swal('Good job!', 'You clicked the button!', 'success');
swal({
    title: 'Are you sure?',
    text: 'You will not be able to recover this imaginary file!',
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Yes, delete it!',
    closeOnConfirm: false
},
   function () {
       swal('Deleted!', 'Your file has been deleted!', 'success');
   });

swal({
    title: 'Are you sure?',
    text: 'You will not be able to recover this imaginary file!',
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Yes, delete it!',
    cancelButtonText: 'No, cancel plx!',
    confirmButtonClass: 'confirm-class',
    cancelButtonClass: 'cancel-class',
    closeOnConfirm: false,
    closeOnCancel: false
},
function (isConfirm) {
    if (isConfirm) {
        swal('Deleted!', 'Your file has been deleted!', 'success');
    } else {
        swal('Cancelled', 'Your imaginary file is safe :)', 'error');
    }
});

swal({
    title: 'Sweet!',
    text: 'Modal with a custom image.',
    imageUrl: 'images/thumbs-up.jpg',
    animation: false
});

swal({
    title: "Ajax request example",
    text: "Submit to run ajax request",
    type: "info",
    showCancelButton: true,
    closeOnConfirm: false,
    showLoaderOnConfirm: true,
}, function ()
{
    setTimeout(function ()
    {
        swal("Ajax request finished!");
    }, 2000);
});
//$('#input-field').focus();