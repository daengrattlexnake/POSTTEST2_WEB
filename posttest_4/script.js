// Event listener untuk mendeteksi scroll
window.addEventListener("scroll", function () {
    var navbar = document.getElementById("navbar");

    // Jika halaman discroll lebih dari 50px, tambahkan kelas 'scrolled'
    if (window.scrollY > 50) {
        navbar.classList.add("scrolled");
    } else {
        navbar.classList.remove("scrolled");
    }
});

// Function to hide the preloader after a delay
function hidePreloader() {
    setTimeout(function () {
        document.body.classList.add('loaded');  // Tambahkan kelas 'loaded' setelah 2 detik
    }, 1500);  // Durasi preloader (1500 milidetik = 1.5 detik)
}

// Inisialisasi Feather Icons
feather.replace();
