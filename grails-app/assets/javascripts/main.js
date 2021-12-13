(function ($) {
    $(function() {
        let summernoteDescription = $('#summernote-description');
        let descriptionValue= summernoteDescription.data('description-value');
        summernoteDescription.summernote('code', descriptionValue);
    });
})(jQuery);