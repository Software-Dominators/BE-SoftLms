<!-- course overview -->

<div class="course__overview-description">
    <h3 class="course__overview-title"><?php echo get_phrase('Course Description') ?></h3>
    <p class="course__overview-paragraph"><?php echo $course_details['short_description']; ?></p>
</div>


<div class="course__overview-outcome">
    <h3 class="course__overview-title"><?php echo get_phrase('What will i learn?') ?></h3>
    <ul>
        <?php foreach (json_decode($course_details['outcomes']) as $outcome): ?>
            <?php if ($outcome != ""): ?>
                <li><?php echo $outcome; ?></li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>
</div>

<div class="course__overview-requirements">
    <h3 class="course__overview-title"><?php echo get_phrase('Requirements') ?></h3>
    <ul>
        <?php foreach (json_decode($course_details['requirements']) as $requirement): ?>
            <?php if ($requirement != ""): ?>
                <li><?php echo $requirement; ?></li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>
</div>
<?php
$faqs = json_decode($course_details['faqs'], true);
$counter = 0; // Initialize counter
if (is_array($faqs) && count($faqs) > 0): ?>
    <div class="course__overview-faq">
        <h3 class="course__overview-title"><?php echo get_phrase('Frequently asked question') ?></h3>

        <div class="accordion course__accordion-faq" id="course-faq">
            <?php foreach ($faqs as $faq_question => $faq): ?>
                <?php ++$counter; ?>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="faq<?php echo $counter; ?>">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapse<?php echo $counter; ?>" aria-expanded="false"
                            aria-controls="collapse<?php echo $counter; ?>">
                            <?php echo htmlspecialchars($faq_question); ?>
                        </button>
                    </h2>
                    <div id="collapse<?php echo $counter; ?>" class="accordion-collapse collapse"
                        aria-labelledby="faq<?php echo $counter; ?>" data-bs-parent="#course-faq">
                        <div class="accordion-body">
                            <?php echo htmlspecialchars($faq); ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
<?php endif; ?>
