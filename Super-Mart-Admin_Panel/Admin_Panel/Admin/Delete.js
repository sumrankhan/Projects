// Utility function to close all elements except the specified one
function closeAllExcept(selector, currentElement) {
    document.querySelectorAll(selector).forEach((element) => {
        if (element !== currentElement) {
            element.style.display = "none";
        }
    });
}

// Toggle visibility of dropdowns
function toggleDropdown(dropdown) {
    closeAllExcept(".dropdown-menu", dropdown);
    dropdown.style.display =
        dropdown.style.display === "block" ? "none" : "block";
}

// Toggle visibility of popups
function togglePopup(popup) {
    closeAllExcept(".pop-up-card", popup);
    popup.style.display = popup.style.display === "block" ? "none" : "block";
}

// Attach event listeners for dropdown toggle and options
function initializeDropdowns() {
    document.addEventListener("click", () => closeAllExcept(".dropdown-menu"));

    document.querySelectorAll(".dropdown-toggle").forEach((icon) => {
        icon.addEventListener("click", (event) => {
            event.stopPropagation();
            const dropdown = icon.nextElementSibling;
            toggleDropdown(dropdown);
        });
    });

    document.querySelectorAll("#dropdownMenuSales ul li").forEach((option) => {
        option.addEventListener("click", () => {
            document.querySelector(".dynamic-text-option").textContent =
                option.dataset.period;
            option.closest(".dropdown-menu").style.display = "none";
        });
    });
}

// Attach event listeners for popup toggle
function initializePopups() {
    document.addEventListener("click", () => closeAllExcept(".pop-up-card"));

    document.querySelectorAll(".pop-up-card-btn").forEach((togglePopupIcon) => {
        togglePopupIcon.addEventListener("click", (event) => {
            event.stopPropagation();
            const popupCard = togglePopupIcon.nextElementSibling;
            togglePopup(popupCard);
        });
    });

    document.querySelectorAll(".pop-up-card").forEach((popupCard) => {
        popupCard.addEventListener("click", (event) => event.stopPropagation());

        popupCard.querySelector(".fa-xmark").addEventListener("click", () => {
            popupCard.style.display = "none";
        });
    });
}

// Burger menu functionality
function initializeBurgerMenu() {
    const burgerMenu = document.getElementById("burgerMenu");
    const sideMenu = document.querySelector(".sidemenu");

    if (burgerMenu && sideMenu) {
        burgerMenu.addEventListener("click", () => {
            sideMenu.classList.toggle("open");
        });
    }
}

// Chart rendering function using a modular approach
function renderChart(containerSelector, chartOptions) {
    const container = document.querySelector(containerSelector);
    if (container) {
        const chart = new ApexCharts(container, chartOptions);
        chart.render();
        return chart;
    }
    return null;
}

// Function to initialize the sales report chart
function initializeSalesReportChart() {
    const initialOptions = {
        series: [
            { name: "Total Revenue", data: [500, 700, 900, 650, 800, 900, 950] },
            { name: "Number of Orders", data: [5, 10, 12, 6, 20, 33, 56] },
            { name: "Average Order Value", data: [10, 10, 10, 10, 10, 10, 10] },
        ],
        chart: {
            height: 150,
            width: 600,
            type: "line",
            zoom: { enabled: false },
            toolbar: { show: false },
        },
        colors: ["#77B6EA", "#FF4560", "#00E396"],
        dataLabels: {
            enabled: true,
            style: { fontSize: "9px", fontFamily: "Montserrat, sans-serif" },
        },
        stroke: { curve: "smooth", width: 2 },
        xaxis: {
            categories: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
            title: {
                text: "Day",
                style: { fontFamily: "Montserrat, sans-serif", fontSize: "11px" },
            },
            labels: {
                style: { fontFamily: "Montserrat, sans-serif", fontSize: "11px" },
            },
        },
        yaxis: [
            {
                title: {
                    text: "Total Revenue & AOV",
                    style: { fontFamily: "Montserrat, sans-serif", fontSize: "9px" },
                },
                min: 0,
                max: 1000,
                labels: {
                    style: { fontFamily: "Montserrat, sans-serif", fontSize: "9px" },
                },
            },
            {
                opposite: true,
                title: {
                    text: "Number of Orders",
                    style: { fontFamily: "Montserrat, sans-serif", fontSize: "9px" },
                },
                min: 0,
                max: 100,
                labels: {
                    style: { fontFamily: "Montserrat, sans-serif", fontSize: "9px" },
                },
            },
        ],
        legend: {
            position: "top",
            horizontalAlign: "right",
            floating: true,
            offsetY: -25,
            offsetX: -5,
            labels: {
                useSeriesColors: true,
                style: { fontFamily: "Montserrat, sans-serif", fontSize: "12px" },
            },
        },
    };
    renderChart("#total-sales-report-chart", initialOptions);
}

// Delete popup functionality
function initializeDeleteModal() {
    let rowToDelete;

    function openDeleteModal(deleteIcon) {
        rowToDelete = deleteIcon.closest("tr");
        document.getElementById("deleteConfirmationModal").style.display = "block";
    }

    const deleteConfirmationModal = document.getElementById(
        "deleteConfirmationModal"
    );
    const closeBtnDeleteConfirmation = document.querySelector(
        ".delete-confirmation-close"
    );
    const confirmDeleteConfirmation = document.getElementById(
        "deleteConfirmationConfirm"
    );
    const cancelDeleteConfirmation = document.getElementById(
        "deleteConfirmationCancel"
    );

    closeBtnDeleteConfirmation.addEventListener("click", () => {
        deleteConfirmationModal.style.display = "none";
    });

    cancelDeleteConfirmation.addEventListener("click", () => {
        deleteConfirmationModal.style.display = "none";
    });

    confirmDeleteConfirmation.addEventListener("click", () => {
        if (rowToDelete) {
            rowToDelete.remove();
            generateSerialNumbers(); // Update serial numbers after deletion
            rowToDelete = null;
        }
        deleteConfirmationModal.style.display = "none";
    });

    window.addEventListener("click", (event) => {
        if (event.target === deleteConfirmationModal) {
            deleteConfirmationModal.style.display = "none";
        }
    });

    return {
        openDeleteModal,
    };
}

// Initialization functions
document.addEventListener("DOMContentLoaded", () => {
    initializeDropdowns();
    initializePopups();
    initializeBurgerMenu();
    initializeSalesReportChart();
    generateSerialNumbers();

    const deleteModal = initializeDeleteModal();
    document.querySelectorAll(".delete-icon").forEach((deleteIcon) => {
        deleteIcon.addEventListener("click", () => {
            deleteModal.openDeleteModal(deleteIcon);
        });
    });
});


// Function to toggle the status of the user
function toggleStatus(button) {
    if (button.classList.contains('active')) {
        button.classList.remove('active');
        button.classList.add('inactive');
        button.textContent = 'Inactive';
    } else {
        button.classList.remove('inactive');
        button.classList.add('active');
        button.textContent = 'Active';
    }
}
