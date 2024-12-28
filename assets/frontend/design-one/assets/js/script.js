if (document.querySelector('.inst-swiper')) {
	const swiper = new Swiper('.inst-swiper', {

		loop: true,

		// If we need pagination
		pagination: {
			el: '.swiper-pagination',
		},

		// Navigation arrows
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
			},
			768: {
				slidesPerView: 2,

			},
			1024: {
				slidesPerView: 3,

			},
			1200: {
				slidesPerView: 3,

			},

			// And if we need scrollbar
			scrollbar: {
				el: '.swiper-scrollbar',
			},
		}
		});

    }