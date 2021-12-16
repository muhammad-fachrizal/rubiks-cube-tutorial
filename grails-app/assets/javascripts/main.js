(function ($) {
    $(function() {
        var summernoteDescription = $('#summernote-description');
        var btnSave = $('#btnSave');
        var emptyDescription = summernoteDescription.data('empty-description');
        summernoteDescription.summernote({
            height: 140
        });

        btnSave.on('click', function(e) {
            if(summernoteDescription.summernote('isEmpty')) {
                alert(emptyDescription);
                e.preventDefault();
            }
        })
    });
})(jQuery);