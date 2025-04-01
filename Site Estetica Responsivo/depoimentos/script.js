const slides = document.querySelector(".slides");
const slide = document.querySelectorAll(".slide");
const prev = document.querySelector(".prev");
const next = document.querySelector(".next");

let currentIndex = 0;

function showSlide(index) {
  const totalSlides = slide.length;
  if (index >= totalSlides) currentIndex = 0; // Volta ao início
  if (index < 0) currentIndex = totalSlides - 1; // Vai ao final
  slides.style.transform = `translateX(-${currentIndex * 100}%)`;
}

next.addEventListener("click", () => {
  currentIndex++;
  showSlide(currentIndex);
});

prev.addEventListener("click", () => {
  currentIndex--;
  showSlide(currentIndex);
});

// Auto-play (opcional)
setInterval(() => {
  currentIndex++;
  showSlide(currentIndex);
}, 5000);
