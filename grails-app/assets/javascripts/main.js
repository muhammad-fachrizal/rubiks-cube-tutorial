(function ($) {
    $(function() {
        var summernoteDescription = $('#summernote-description');
        var btnSave = $('#btnSave');
        var emptyDescription = summernoteDescription.data('empty-description');
        var jsDeleteModal = $('.js-delete-modal');
        var jsModalBody = $('.js-modal-body');
        var deleteModal = $('#deleteModal');

        //generate summernote
        summernoteDescription.summernote({
            height: 140
        });

        //set delete modal
        deleteModal.on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var articleId = button.data('article-id');
            var articleTitle = button.data('article-title');
            var hrefDelete = jsDeleteModal.data('href');
            jsDeleteModal.attr("href", hrefDelete + articleId);
            jsModalBody.text(articleTitle + "?");
        });

        //check empty summernote
        btnSave.on('click', function(e) {
            if(summernoteDescription.summernote('isEmpty')) {
                alert(emptyDescription);
                e.preventDefault();
            }
        });
    });
})(jQuery);