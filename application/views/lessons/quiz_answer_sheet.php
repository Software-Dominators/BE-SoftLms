<?php foreach ($quiz_questions->result_array() as $question_number => $quiz_question): ?>
	<?php $question_number++; ?>
	<?php if ($quiz_question['type'] == 'multiple_choice' || $quiz_question['type'] == 'single_choice'): ?>
		<div class="question-wrapper" id="question-<?php echo $question_number; ?>">
			<form class="ajaxFormSubmission" id="submitForm<?php echo $question_number; ?>"
				action="<?php echo site_url('user/submit_quiz_answer/' . $quiz_question['quiz_id'] . '/' . $quiz_question['id'] . '/' . $quiz_question['type']); ?>"
				method="post" enctype="multipart/form-data">
				<?php $input_type = ($quiz_question['type'] == 'multiple_choice') ? 'checkbox' : 'radio'; ?>
				<hr class="bg-secondary">
				<div class="d-flex align-items-center">
					<p class="pe-2 quiz__question-number"><?php echo $question_number; ?>.</p>
					<div class=" quiz__question">
						<?php echo remove_js(htmlspecialchars_decode_($quiz_question['title'])); ?>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-1"></div>
					<div class="col-md-9">
						<?php foreach (json_decode($quiz_question['options'], true) as $key => $option): ?>
							<?php $key++; ?>
							<div class="form-group align-items-center d-flex">
								<input onchange="submit_quiz_answer('submitForm<?php echo $question_number; ?>');"
									id="option_<?php echo $question_number . '_' . $key; ?>" type="<?php echo $input_type; ?>"
									value="<?php echo $key; ?>" name="answer[]" class="quiz__input">
								<label class="<?php echo $input_type; ?>  quiz__label"
									for="option_<?php echo $question_number . '_' . $key; ?>"><?php echo $option; ?></label><br>
							</div>
						<?php endforeach; ?>
						<!-- Add flag checkbox -->
						<div class="flag-container mt-2">
							<input type="checkbox" id="flag-<?php echo $question_number; ?>" class="question-flag-checkbox "
								onchange="toggleQuestionFlag(<?php echo $question_number; ?>)">
							<label for="flag-<?php echo $question_number; ?>" class="flag-label  ">
								Flag for review
							</label>
						</div>
					</div>
				</div>
			</form>
		</div>
	<?php elseif ($quiz_question['type'] == 'fill_in_the_blank'): ?>
		<div class="question-wrapper" id="question-<?php echo $question_number; ?>">
			<form class="ajaxFormSubmission  quiz-form" id="submitForm<?php echo $question_number; ?>"
				action="<?php echo site_url('user/submit_quiz_answer/' . $quiz_question['quiz_id'] . '/' . $quiz_question['id'] . '/' . $quiz_question['type']); ?>"
				method="post" enctype="multipart/form-data">
				<hr class="bg-secondary">
				<div class="d-flex align-items-center">
					<p class="pe-2  quiz__question-number"><?php echo $question_number; ?>.</p>
					<div class="quiz__question">
						<?php
						$correct_answers = json_decode($quiz_question['correct_answers'], true);
						$question_title = remove_js(htmlspecialchars_decode_($quiz_question['title']));
						foreach ($correct_answers as $correct_answer):
							$question_title = str_replace($correct_answer, ' _____ ', $question_title);
						endforeach;
						echo $question_title;
						?>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-1"></div>
					<div class="col-md-9">
						<div class="input-group mb-3">
							<?php foreach ($correct_answers as $key => $word): ?>
								<span class="input-group-text"><?php echo ++$key; ?></span>
								<input type="text" onblur="submit_quiz_answer('submitForm<?php echo $question_number; ?>');"
									class="form-control" name="answer[]">
							<?php endforeach; ?>
						</div>
						<!-- Add flag checkbox -->
						<div class="flag-container mt-2">
							<input type="checkbox" id="flag-<?php echo $question_number; ?>" class="question-flag-checkbox"
								onchange="toggleQuestionFlag(<?php echo $question_number; ?>)">
							<label for="flag-<?php echo $question_number; ?>" class="flag-label">
								Flag for review
							</label>
						</div>
					</div>
				</div>
			</form>
		</div>
	<?php endif; ?>
<?php endforeach; ?>

<div id="flagged-questions-label" class="flagged-questions-label" onclick="scrollToNextFlaggedQuestion()"></div>

<form class="ajaxFormSubmission text-center" id="quizFinishForm"
	action="<?php echo site_url('user/finish_quize_submission/' . $quiz_id); ?>" method="post"
	enctype="multipart/form-data">
	<button id="quizSubmissionBtn" type="submit"
		class="btn btn-primary mt-4 px-5"><?php echo site_phrase('submit'); ?></button>
</form>

<style>
	.flagged-questions-label {
		display: none;
		position: fixed;
		top: 10rem;
		left: 13px;
		background-color: #ff4444;
		color: white;
		padding: 8px 16px;
		border-radius: 4px;
		box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
		z-index: 9999;
		cursor: pointer;
		font-weight: bold;
		transition: all 0.3s ease;
	}

	.flagged-questions-label:hover {
		background-color: #ff6666;
		transform: scale(1.05);
	}

	.question-flag-checkbox {
		margin-left: 10px;
		cursor: pointer;
	}

	.flag-container {
		display: flex;
		align-items: center;
		padding: 8px 0;
		border-top: 1px solid #eee;
	}

	.flag-label {
		margin-left: 8px;
		color: #666;
		cursor: pointer;
	}

	.question-wrapper {
		position: relative;
		scroll-margin-top: 100px;
	}
</style>
<script type="text/javascript">
	// Store flagged questions
	let questionFlags = new Set();
	let currentFlaggedIndex = 0;

	function submit_quiz_answer(formId) {
		$("#" + formId).submit();
	}

	function toggleQuestionFlag(questionNumber) {
		const checkbox = document.getElementById(`flag-${questionNumber}`);

		if (checkbox.checked) {
			questionFlags.add(questionNumber);
		} else {
			questionFlags.delete(questionNumber);
		}

		updateFlaggedQuestionsLabel();
		updateSubmitButton();
	}

	function updateFlaggedQuestionsLabel() {
		const flagLabel = document.getElementById('flagged-questions-label');

		if (questionFlags.size > 0) {
			flagLabel.textContent = `${questionFlags.size} question(s) to review`;
			flagLabel.style.display = 'block';
		} else {
			flagLabel.style.display = 'none';
		}
	}

	function updateSubmitButton() {
		const submitBtn = document.getElementById('quizSubmissionBtn');
		if (questionFlags.size > 0) {
			submitBtn.disabled = true;
			submitBtn.title = 'Please review all flagged questions before submitting';
		} else {
			submitBtn.disabled = false;
			submitBtn.title = '';
		}
	}

	function scrollToNextFlaggedQuestion() {
		if (questionFlags.size === 0) return;

		const flaggedQuestions = Array.from(questionFlags).sort((a, b) => a - b);
		currentFlaggedIndex = (currentFlaggedIndex + 1) % flaggedQuestions.length;
		const nextQuestion = flaggedQuestions[currentFlaggedIndex];

		const questionElement = document.getElementById(`question-${nextQuestion}`);
		if (questionElement) {
			questionElement.scrollIntoView({ behavior: 'smooth', block: 'center' });
		}
	}

	// Your existing AJAX form submission code
	$(function () {
		$('.ajaxFormSubmission').ajaxForm({
			beforeSend: function () {
				var percentVal = '0%';
			},
			uploadProgress: function (event, position, total, percentComplete) {
				var percentVal = percentComplete + '%';
			},
			complete: function (xhr) {
				var jsonResponse = JSON.parse(xhr.responseText);
				if (jsonResponse.status == 'submit') {
					location.reload();
				}
			},
			error: function () {
				//You can write here your js error message
			}
		});
	});
</script>