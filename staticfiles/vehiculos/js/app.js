const toggleButton = document.getElementById('toggle-btn');
const sidebar = document.getElementById('sidebar');

function toggleSidebar() {
    sidebar.classList.toggle('close');
    toggleButton.classList.toggle('rotate');
    closeAllSubMenus();
}

function toggleSubMenu(button) {
    if (!button.nextElementSibling.classList.contains('show')) {
        closeAllSubMenus();
    }

    button.nextElementSibling.classList.toggle('show');
    button.classList.toggle('rotate');

    if (sidebar.classList.contains('close')) {
        sidebar.classList.toggle('close');
        toggleButton.classList.toggle('rotate');
    }
}

function closeAllSubMenus() {
    Array.from(sidebar.getElementsByClassName('show')).forEach(ul => {
        ul.classList.remove('show');
        ul.previousElementSibling.classList.remove('rotate');
    });
}

// Nueva función para manejar la clase "active"
function setActiveLink() {
    const links = sidebar.querySelectorAll('a');

    links.forEach(link => {
        link.addEventListener('click', function() {
            // Quitar clase "active" de todos los enlaces
            links.forEach(item => item.classList.remove('active'));
            // Agregar clase "active" al enlace clicado
            this.classList.add('active');
        });
    });
}

// Llamar a la función para inicializar los enlaces
setActiveLink();

function togglePasswordForm() {
    var form = document.getElementById("password-form");
    form.style.display = form.style.display === "none" ? "block" : "none";
}
