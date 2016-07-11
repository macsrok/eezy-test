var $grid;

$(function () {
   $grid = $('.grid').masonry({
    // set itemSelector so .grid-sizer is not used in layout
    itemSelector: '.grid-item',
    // use element for option
    columnWidth: '.grid-sizer',
    percentPosition: true
  });
  
  $grid.imagesLoaded().progress( function() {
    $grid.masonry('layout');
  });

  $('.grid-item').click(function(e){
    e.preventDefault()
    var url = '/photos/redirect/' +  $(this).attr('data-500-id') + '/' + $(this).attr('data-search-terms') ;
    window.location.href = url;
  });


  $('#search_text, #search_results_input').keypress(function (e) {
    if (e.which == 13) {
      var terms  = $(this).val();
      terms  = terms.replace(/-/, '_');
      terms  = terms.replace(/\s/, '-');
      window.location.href= '/photos/search/'+terms;
      return false;
    }
  });

});