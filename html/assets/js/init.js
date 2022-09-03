const open = (data) => {
  $('#name').css('color', '#282828');
  $('#dob').css('color', '#282828');
  $('#mat').css('color', '#282828');
  $('#birthdate').css('color', '#282828');
  $('#signature').css('color', '#282828');

  $('#mat').text(data.mat);
  $('#name').text(data.name);
  $('#dob').text(data.dob);
  $('#birthdate').text(data.birthdate);
  $('#signature').text(data.signature);

  $('#id-card').css('background', 'url(assets/images/lspd.png)');

  $('#id-card').show();
}

const close = () => {
  $('#name').text('');
  $('#dob').text('');
  $('#height').text('');
  $('#signature').text('');
  $('#sex').text('');
  $('#id-card').hide();
  $('#licenses').html('');
}

$(document).ready(function(){
    window.addEventListener('message', function(event) {
        switch(event.data.action) {
            case "open":
                open(event.data);
                break;
            case "close":
                close();
                break;
        }
    })
});
