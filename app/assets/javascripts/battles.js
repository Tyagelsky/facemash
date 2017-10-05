$(document).ready(function() {
    $('.photos').on('click', function(e) {
        e.preventDefault();
        var winner_id = $(this).find('#winner_id').val();
        var looser_id = $(this).find('#looser_id').val();

        $.ajax({
            url: '/battles',
            method: 'POST',
            data: { photo_winner_id: winner_id,
                    photo_looser_id: looser_id },
            success: function(result) {
                console.log('success' + result)
                $("#photos-for-battle").html(result)
            },
            error: function(result) {
                console.log('error' + result)
            }
        })
    })
})
