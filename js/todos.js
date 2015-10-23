$(document).on('ready', function() {
  $('.todo-complete').on('click', function() {
    $(this).parent().toggleClass('is-complete');
    $('.todos-remaining').trigger('update.todos');
  });

  $('.todo-filter > a').on('click', function() {
    var filter = $(this).parent('.todo-filter');

    $('.todo-filter').removeClass('is-active');
    filter.addClass('is-active');

    if ( filter.hasClass('active') ) {
      $('.todo.is-complete').slideUp(200);
      $('.todo').not('.is-complete').slideDown(200);
    } else if ( filter.hasClass('completed') ) {
      $('.todo.is-complete').slideDown(200);
      $('.todo').not('.is-complete').slideUp(200);
    } else {
      $('.todo').slideDown(200);
    }
  });

  $('.todos-remaining').on('update.todos', function() {
    var self = $(this),
        totalTodos = $('.todo').length,
        numComplete = $('.is-complete').length,
        itemsLeft = ((totalTodos - numComplete) === 1) ? ' item left' : ' items left';

    self.html($('<strong>').html(totalTodos - numComplete)).append(itemsLeft);
  });

  $('.todo-destroy').on('click', function(e) {
    e.preventDefault();
    var todo = $(this).parent('.todo');

    todo.slideUp(200, function() {
      todo.remove();
    });
  });
});
