$(document).ready(function() {
    $('a.edit_train').click(function(e) {
        e.preventDefault();

        var train_id;
        var form;
        var number_train;

        train_id = $(this).data('trainId');
        form = $('#edit_train_' + train_id);
        number_train = $('#train_number_train_' + train_id);

        if (!$(this).hasClass('cancel')) {
            $(this).html('Закрыть')
            $(this).addClass('cancel');
        } else {
            $(this).html('Редактировать');
            $(this).removeClass('cancel');
        }

        form.toggle();
        title.toggle();
    });
});
