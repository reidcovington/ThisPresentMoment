$( document ).ready(function() {
    setInterval(function (){
        $('[data-old-pics]').hide();
        $.get('/pics/new_pictures').done(function(response){
            var new_pictures = response;
            for(i=0; i < new_pictures.length; i++){
                $('[data-new-pic-' + i + ']').html('<img src="' + new_pictures[i].image_url +'"></div>'  )
            }
        });
    }, 30000)
});

// $( ".single-pic-frame" ).load(function() {
//   setTimeout(function() {
//     window.location = '/pics'
//     }, 5000);
// });


// <div class="pic-frame"></div>
