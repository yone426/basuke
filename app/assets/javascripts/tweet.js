$(function(){
  function buildHTML(data){
    var html = `<div class="message">
                  ${tweet.name}
                  ${tweet.text}
                </div>`
    return html;
  }
  $('#new_tweet').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.chat').append(html);
      $('.form').val('');
      $('.send').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
});

