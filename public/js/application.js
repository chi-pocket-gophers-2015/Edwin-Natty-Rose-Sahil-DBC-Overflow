$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
// Step 1 - select submit button
// 1a. tip use console.log('thing you are testing') all the way
// 1b. don't forget to use event.preventDefault(); this prevents the request from executing, in this case, the post method.
// Step 2 - if your route doesn't have embedded ruby, you can pass it as a parameter to your ajax call (see line 16) which you set to a request variable
// Step 3 - specify the method call that you are postponing (FYI: sometimes you will need to pass different parameters)
// Step 4 - Call the success method on the variable you have set to do something with the response (in this case we are using html and json to send a message back) (See votes controller)
  $("input[type='submit']").hide()
  $(".vote").css("cursor", "pointer")
  $('.upvote').on('click', function(event){
    console.log(event);
    event.preventDefault();
    var path = $(this).attr('action');
    // var path = '/questions/id/upvotes'
    // console.log(path);
    var request = $.ajax({
                        url: path,
                        // url: '/questions/id/upvotes'
                        method: "post"
                  });

    var questionVote = $(this).next();
    console.log(questionVote);

    request.success(function(response){
      // console.log(response);
      questionVote.text(response.upvote);
    });
  });
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

    $('.downvote').on('click', function(event){
    event.preventDefault();
    var path = $(this).attr('action');
    // var path = '/questions/id/upvotes'
    // console.log(path);
    var request2 = $.ajax({
                        url: path,
                        // url: '/questions/id/upvotes'
                        method: "post"
                  });

    var questionVote2 = $(this).next();
    console.log(questionVote2);

    request2.success(function(response){
      console.log(response);
      questionVote2.text(response.downvote);
    });
  });
});
