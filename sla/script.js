// Script básico para animação ao rolar a página
document.addEventListener('DOMContentLoaded', () => {
    const ctaButton = document.querySelector('.cta-button');
    ctaButton.addEventListener('click', () => {
        document.querySelector('#servicos').scrollIntoView({
            behavior: 'smooth'
        });
    });
});
