<?php include "breadcrumb.php"; ?>

<?php $website_faqs = json_decode(get_frontend_settings('website_faqs'), true); ?>
<?php
$website_faqs = array_values($website_faqs); // Reindex the array to ensure sequential keys
?>
<?php if (count($website_faqs) > 0): ?>
    <!---------- Questions Section Start  -------------->

    <section class="faq">
    <div class="container">
        <div class="row">
            <div class="accordion" id="accordionExample">
                <?php foreach ($website_faqs as $key => $faq): ?>
                    <!-- start -->
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="<?= 'heading' . $key ?>">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#<?= 'collapse' . $key ?>" aria-expanded="false"
                                aria-controls="<?= 'collapse' . $key ?>">
                                <?= $key + 1 . '. ' . $faq['question']; ?>
                            </button>
                        </h2>
                        <div id="<?= 'collapse' . $key ?>" class="accordion-collapse collapse"
                            aria-labelledby="<?= 'heading' . $key ?>" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <p>
                                    <?php echo nl2br($faq['answer']); ?>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>
    <!---------- Questions Section End  -------------->
<?php endif; ?>




<script>
   $(document).ready(function () {
    // Apply border to .accordion-item when the button is expanded (not collapsed) on page load
    $('.accordion-button').each(function() {
        if (!$(this).hasClass('collapsed')) {
            $(this).closest('.accordion-item').css('border', '1px solid #A1A1A1'); // Add border when expanded
        }
    });

    // Toggle the border when an accordion button is clicked
    $('.accordion-button').on('click', function () {
        var $accordionItem = $(this).closest('.accordion-item');
        
        // Check if the button has the 'collapsed' class (if not, it's expanded)
        if ($(this).hasClass('collapsed')) {
            $accordionItem.css('border', 'none'); // Remove border when collapsed
        } else {
            $accordionItem.css('border', '1px solid #A1A1A1'); // Add border when expanded
        }
    });
});

</script>
