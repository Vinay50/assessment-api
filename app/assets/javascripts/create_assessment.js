$(document).on("ready cocoon:after-insert", function() {
  const setDefaultAppearanceToCheckedAnswers = function() {
    const checked_answers = $(
      'input.quiz_questions_answers_correct[value="true"]'
    );
    return checked_answers
      .parents("div.answer-container")
      .addClass("correct-answer");
  };

  $('[data-action="toggle-correct-answer"]').on("click", event =>
    toggleCorrectAnswer($(event.currentTarget))
  );

  var toggleCorrectAnswer = function(triggeringElement) {
    console.log("trigger", triggeringElement);
    const answers = triggeringElement
      .parents(".question-container")
      .find("input.quiz_questions_answers_correct");
    const hitten_answer = triggeringElement
      .siblings()
      .find("input.quiz_questions_answers_correct");

    answers
      .val(false)
      .prop("checked", false)
      .parents("div.answer-container")
      .removeClass("correct-answer");

    hitten_answer.val(true).prop("checked", true);
    return hitten_answer
      .parents("div.answer-container")
      .addClass("correct-answer");
  };

  return setDefaultAppearanceToCheckedAnswers();
});
