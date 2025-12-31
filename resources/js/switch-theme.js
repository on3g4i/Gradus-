

const buttonToggle = document.querySelector('#toggleTheme');

const icon = document.querySelector('#icon');

function applyDarkMode() {
    document.documentElement.classList.add('dark');
    localStorage.setItem('theme', 'dark');
}
function applyLightMode() {

    document.documentElement.classList.remove('dark');
    localStorage.setItem('theme', 'light');
}

if (buttonToggle != null) {
    buttonToggle.addEventListener('click', () => {
        if (document.documentElement.classList.contains('dark')) {
            applyLightMode();
        } else {
            applyDarkMode();
        }
    });
}

if (localStorage.getItem('theme') === 'dark') {
    applyDarkMode();
} else {
    applyLightMode();
}

// Remove a classe hidden após 300ms para evitar o flash de conteúdo (FOUC)
setTimeout(() => {
    document.querySelector('html').classList.remove('hidden');
}, 100);