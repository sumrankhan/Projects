
// Side nav script responsive one start
function openNav() {
    // Check the screen width and set the width accordingly
    if (window.innerWidth >= 768) {
        document.getElementById("mySidenav").style.width = "20%";  // Set to 20% for larger screens
    } else {
        document.getElementById("mySidenav").style.width = "100%"; // Set to 100% for smaller screens
        document.body.style.overflow = "hidden"; // Disable scrolling

        // Delay hiding the main content to sync with the sidenav transition
        setTimeout(function () {
            document.getElementById("mainContent").classList.add("hidden");
        }, 500); // Adjust the delay time as needed (e.g., 300ms)
    }
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0"; // Close the side navigation
    document.getElementById("mainContent").classList.remove("hidden"); // Show main content with fade-in effect
    document.body.style.overflow = "auto"; // Enable scrolling
}

// Optionally, add an event listener to handle window resize if you want the side navigation to update dynamically
window.addEventListener('resize', function () {
    // When resizing, update the width of the side navigation
    if (window.innerWidth > 768) {
        document.getElementById("mySidenav").style.width = "15%";
        document.body.style.overflow = "auto"; // Ensure scrolling is enabled on larger screens
        document.getElementById("mainContent").classList.remove("hidden"); // Ensure content is visible on larger screens
    } else {
        document.getElementById("mySidenav").style.width = "100%";
        setTimeout(function () {
            document.getElementById("mainContent").classList.add("hidden");
        }, 500); // Adjust the delay time as needed (e.g., 300ms)
        document.body.style.overflow = "hidden"; // Disable scrolling for smaller screens
    }
});


// -----------------------------------------------------------------------//


// Function to toggle the popup visibility using style.display
function togglePopup(popup) {
    // Close all other popups except the current one
    document.querySelectorAll('.pop-up-card').forEach(card => {
        if (card !== popup) {
            card.style.display = 'none'; // Hide other open popups
        }
    });

    // Toggle the visibility of the clicked popup
    if (popup.style.display === 'none' || popup.style.display === '') {
        popup.style.display = 'block'; // Show the popup
    } else {
        popup.style.display = 'none'; // Hide the popup
    }
}

// Attach event listeners to the angle-down icons
document.querySelectorAll('.pop-up-card-btn').forEach(togglePopupIcon => {
    togglePopupIcon.addEventListener('click', function (event) {
        const popupCard = togglePopupIcon.nextElementSibling; // Find the next sibling (popup)
        togglePopup(popupCard);
        event.stopPropagation(); // Prevent the window click event from firing immediately
    });
});

// Close any open popup when clicking outside of it
window.addEventListener('click', function () {
    document.querySelectorAll('.pop-up-card').forEach(popupCard => {
        popupCard.style.display = 'none'; // Hide all popups when clicking outside
    });
});

// Prevent closing the popup if clicked inside the popup card (except X icon)
document.querySelectorAll('.pop-up-card').forEach(popupCard => {
    popupCard.addEventListener('click', function (event) {
        event.stopPropagation(); // Prevent closing the popup if clicking inside
    });

    // Close the popup when clicking on the X icon inside the card
    popupCard.querySelector('.fa-xmark').addEventListener('click', function () {
        popupCard.style.display = 'none'; // Close the popup
    });
});





//showing pop up for selecting product and its category then generate its report
// Sample data for categories and products
const categories = {
    Electronics: [
        "Smartphone X1",
        "Laptop Pro 2024",
        "Wireless Headphones",
        "Smartwatch Ultra",
        "4K LED TV",
        "Bluetooth Speaker",
        "Gaming Console Z",
    ],
    Clothing: [
        "Classic T-Shirt",
        "Denim Jacket",
        "Running Shoes",
        "Summer Dress",
        "Wool Sweater",
        "Cargo Pants",
        "Sports Bra",
    ],
    Furniture: [
        "Dining Table Set",
        "Leather Sofa",
        "Office Chair",
        "Queen Bed Frame",
        "Bookshelf",
        "Coffee Table",
        "TV Stand",
    ],
    Books: [
        "The Great Gatsby",
        "To Kill a Mockingbird",
        "1984 by George Orwell",
        "Moby brick",
        "Pride and Prejudice",
        "War and Peace",
        "The Catcher in the Rye",
    ],
    Toys: [
        "Action Figure Set",
        "Building Blocks",
        "Board Game",
        "Dollhouse",
        "Remote Control Car",
        "Puzzle Set",
        "Educational Toy",
    ],
    Sports: [
        "Soccer Ball",
        "Basketball",
        "Tennis Racket",
        "Baseball Glove",
        "Yoga Mat",
        "Dumbbell Set",
        "Bicycle",
    ],
    Automotive: [
        "Car Vacuum Cleaner",
        "GPS Navigation System",
        "Portable Jump Starter",
        "Car Seat Covers",
        "Dashboard Camera",
        "Tire Inflator",
        "Engine Oil",
    ],
};

// Initialize the dropdowns with default options
function populateOptions() {
    const categorySelect = document.getElementById("category");

    // Clear previous options
    categorySelect.innerHTML = "";

    // Add categories to the category dropdown
    Object.keys(categories).forEach(category => {
        const option = document.createElement("option");
        option.value = category;
        option.text = category;
        categorySelect.add(option);
    });
}

// Open the popup
function showPopup() {
    document.getElementById("categoryModal").style.display = "flex";
    populateOptions(); // Populate options when the popup opens
}

// Close the popup
function closePopup() {
    document.getElementById("categoryModal").style.display = "none";
}

// Filter function for searchable dropdown
function filterOptions(selectId, searchId) {
    const input = document.getElementById(searchId).value.toLowerCase();
    const select = document.getElementById(selectId);

    Array.from(select.options).forEach(option => {
        const text = option.text.toLowerCase();
        option.style.display = text.includes(input) ? "block" : "none";
    });
}

// Function to handle category selection
function selectCategory() {
    const categorySelect = document.getElementById("category");
    const selectedCategory = categorySelect.value;
    document.getElementById("categorySearch").value = selectedCategory; // Display selected category in input
}

// Generate report function
function generateReport() {
    const category = document.getElementById("category").value;
    const startDate = document.getElementById("startDate").value; // Get start date
    const endDate = document.getElementById("endDate").value; // Get end date

    // Redirect to the report page with category, start date, and end date as query parameters
    window.location.href = `sales-by-specific-category-report.html?category=${category}&startDate=${startDate}&endDate=${endDate}`;
    closePopup();
}



//script ends

function showDateRangePopup() {

    document.getElementById("dateRangeModal").style.display = "flex";
}

function closeDateRangePopup() {
    document.getElementById("dateRangeModal").style.display = "none";
}

function generateDateRangeReport() {
    const startDate = document.getElementById("dateRangeStartDate").value;
    const endDate = document.getElementById("dateRangeEndDate").value;

    // Check if both dates are selected
    if (startDate && endDate) {
        // Redirect to the report page with selected dates as query parameters
        location.href = '../Sales_Report/Total_Sales_Report.html';
    } else {
        alert("Please select both start and end dates."); // Alert if dates are not selected
    }

    // Optional: Close the modal if desired
    closeDateRangePopup();
}







// Sample data for products (you can modify this with actual product data)
const products = [
    "Smartphone X1",
    "Laptop Pro 2024",
    "Wireless Headphones",
    "Smartwatch Ultra",
    "4K LED TV",
    "Bluetooth Speaker",
    "Gaming Console Z",
    "Classic T-Shirt",
    "Denim Jacket",
    "Running Shoes",
    "Summer Dress",
    "Wool Sweater",
    "Cargo Pants",
    "Sports Bra",
    "Dining Table Set",
    "Leather Sofa",
    "Office Chair",
    "Queen Bed Frame",
    "Bookshelf",
    "Coffee Table",
    "TV Stand",
    "The Great Gatsby",
    "To Kill a Mockingbird",
    "1984 by George Orwell",
    "Moby brick",
    "Pride and Prejudice",
    "War and Peace",
    "Action Figure Set",
    "Building Blocks",
    "Board Game",
    "Dollhouse",
    "Remote Control Car",
    "Puzzle Set",
    "Educational Toy",
    "Soccer Ball",
    "Basketball",
    "Tennis Racket",
    "Baseball Glove",
    "Yoga Mat",
    "Dumbbell Set",
    "Bicycle",
    "Car Vacuum Cleaner",
    "GPS Navigation System",
    "Portable Jump Starter",
    "Car Seat Covers",
    "Dashboard Camera",
    "Tire Inflator",
    "Engine Oil",
];

// Populate product options in the dropdown
function populateProductOptions() {
    const productDropdown = document.getElementById("productDropdown");

    // Clear previous options
    productDropdown.innerHTML = "";

    // Add products to the product dropdown
    products.forEach(product => {
        const option = document.createElement("option");
        option.value = product;
        option.text = product;
        productDropdown.add(option);
    });
}

// Open the product popup
function showProductPopup() {
    document.getElementById("productModal").style.display = "flex";
    populateProductOptions(); // Populate options when the popup opens
}

// Close the product popup
function closeProductPopup() {
    document.getElementById("productModal").style.display = "none";
}

// Filter function for searchable product dropdown
function filterProductOptions() {
    const input = document.getElementById("productSearch").value.toLowerCase();
    const productDropdown = document.getElementById("productDropdown");

    Array.from(productDropdown.options).forEach(option => {
        const text = option.text.toLowerCase();
        option.style.display = text.includes(input) ? "block" : "none";
    });
}

// Function to handle product selection
function selectProduct() {
    const productDropdown = document.getElementById("productDropdown");
    const selectedProduct = productDropdown.value;
    document.getElementById("productSearch").value = selectedProduct; // Display selected product in input
}

// Generate product report function
function generateProductReport() {
    const product = document.getElementById("productDropdown").value;
    const startDate = document.getElementById("productStartDate").value; // Get start date
    const endDate = document.getElementById("productEndDate").value; // Get end date

    // Redirect to the report page with product, start date, and end date as query parameters
    window.location.href = `sales-by-specific-product-report.html?product=${product}&startDate=${startDate}&endDate=${endDate}`;
    closeProductPopup();
}


//all product page dropdown for category
// Open the popup
function openCategoryPopup() {
  document.getElementById("categoryPopup").style.display = "block";
}

// Close the popup
function closeCategoryPopup() {
  document.getElementById("categoryPopup").style.display = "none";
}

// Filter categories
function filterCategories() {
  const input = document.getElementById("categorySearch");
  const filter = input.value.toLowerCase();
  const ul = document.getElementById("categoryList");
  const li = ul.getElementsByTagName("li");

  for (let i = 0; i < li.length; i++) {
    const text = li[i].innerText || li[i].textContent;
    li[i].style.display = text.toLowerCase().includes(filter) ? "" : "none";
  }
}

// Optionally, close the popup when clicking outside it
window.onclick = function (event) {
  const popup = document.getElementById("categoryPopup");
  if (event.target === popup) {
    popup.style.display = "none";
  }
};




//All product active inactive toggle button









//dashboard chart for expected sales this month
document.addEventListener("DOMContentLoaded", function () {
    var options = {
        series: [75], // Adjust this number to reflect the expected sales percentage
        chart: {
            height: 150,
            width:250,
            type: 'radialBar',
            toolbar: {
                show: false  // Disable the toolbar
            }
        },
        plotOptions: {
            radialBar: {
                startAngle: -135,
                endAngle: 225,
                hollow: {
                    margin: 0,
                    size: '80%',
                    background: '#fff',
                    image: undefined,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: 'front',
                    dropShadow: {
                        enabled: true,
                        top: 3,
                        left: 0,
                        blur: 4,
                        opacity: 0.24
                    }
                },
                track: {
                    background: '#fff',
                    strokeWidth: '67%',
                    margin: 0,
                    dropShadow: {
                        enabled: true,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: 0.35
                    }
                },
                dataLabels: {
                    show: true,
                    name: {
                        offsetY: -10,
                        show: true,
                        color: '#888',
                        fontSize: '14px',
                        text: 'Completed'
                    },
                    value: {
                        formatter: function (val) {
                            return parseInt(val)+'%';
                        },
                        color: '#111',
                        fontSize: '32px',
                        show: true,
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                type: 'vertical',
                shadeIntensity: 0.5,
                gradientToColors: ['#ABE5A1'],
                inverseColors: true,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        stroke: {
            lineCap: 'round'
        },
        labels: ['Completed'], // Updated label text
    };

    var expectedSales = new ApexCharts(document.querySelector("#expected-sales-this-month-chart"), options);
    expectedSales.render();
});






















// Discounts and coupons chart showing sales with and without discounts

// Use document.addEventListener to ensure DOM is fully loaded before rendering the chart
document.addEventListener("DOMContentLoaded", function () {
    var options = {
        chart: {
            type: 'line',
            height: 200,   // Adjusted height for visibility
            width: 1000,  // Chart takes full width of the container
            toolbar: {
                show: false, // This removes the toolbar and its menu
            }
        },
        series: [
            {
                name: 'Sales with Discount',
                data: [5000, 6000, 7000, 8000, 9000, 10000, 11000] // Example sales with discount data
            },
            {
                name: 'Sales without Discount',
                data: [4500, 5500, 6500, 7500, 8500, 9500, 10500] // Example sales without discount data
            }
        ],
        xaxis: {
            categories: ['2024-10-01', '2024-10-02', '2024-10-03', '2024-10-04', '2024-10-05', '2024-10-06', '2024-10-07'] // Example dates
        },
        title: {
            text: 'Sales Comparison: With vs. Without Discounts',
            align: 'center',
            style: {
                fontSize: '16px',
                fontWeight: 'bold',
                color: '#333'
            }
        },
        stroke: {
            width: 2
        },
        markers: {
            size: 5
        },
        tooltip: {
            shared: true,
            intersect: false
        },
        legend: {
            position: 'top',
            horizontalAlign: 'right'
        },
        grid: {
            borderColor: '#f1f1f1'
        }
    };

    // Initialize the chart after the DOM is loaded
    var salesWithAndWithoutDiscountChart = new ApexCharts(document.querySelector("#sales-with-and-without-discount-chart"), options);
    salesWithAndWithoutDiscountChart.render();
});


// chart for discount redemption rate
document.addEventListener("DOMContentLoaded", function () {
    var options = {
        chart: {
            type: 'bar',
            height: 250,
            toolbar: {
                show: false, // This removes the toolbar and its menu
            }
        },
        series: [{
            name: 'Redemption Rate',
            data: [75, 60, 85, 95, 50] // Example redemption rates
        }],
        xaxis: {
            categories: ['WELCOME10', 'FREESHIP', 'SUMMER20', 'BLACKFRIDAY', 'NEWYEAR50'], // Example discount types
            title: {
                text: 'Discount Type'
            }
        },
        yaxis: {
            title: {
                text: 'Redemption Rate (%)'
            },
            max: 100, // Setting the maximum y-axis to 100 for percentage
            min: 0
        },
        // title: {
        //     text: 'Redemption Rate Across Discount Types',
        //     align: 'center',
        //     style: {
        //         fontSize: '16px',
        //         fontWeight: 'bold',
        //         color: '#333'
        //     }
        // },
        colors: ['#FF5733'], // Set a color for the bars
        plotOptions: {
            bar: {
                horizontal: false, // Makes the bars vertical
                columnWidth: '40%',
            }
        },
        dataLabels: {
            enabled: true,
            style: {
                fontSize: '22px',
                fontWeight: 'bold',
            }
        },
        grid: {
            borderColor: '#f1f1f1',
        }
    };

    // Create the chart using the options defined above
    var discountRedemptionRate = new ApexCharts(document.querySelector("#discount-redemption-rate"), options);
    discountRedemptionRate.render();
});





document.addEventListener('DOMContentLoaded', function () {
    // Monthly refund Chart for Return and refund report
    var options = {
        series: [{
            name: 'Refund Amount',
            data: [500, 750, 900, 100, 950, 1050, 870, 1120, 980, 750, 800, 1000] // Example monthly data
        }],
        chart: {
            type: 'line',
            height: 200,
            width: 1000,
            toolbar: { show: false }
        },
        stroke: {
            width: 3,
            curve: 'smooth'
        },
        xaxis: {
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            title: { text: 'Month', style: { fontFamily: 'Montserrat' } }
        },
        yaxis: {
            title: { text: 'Refund Amount ($)', style: { fontFamily: 'Montserrat' } }
        },
        dataLabels: {
            enabled: true,
            formatter: function (val) {
                return "$" + val.toLocaleString(); // Format the value as currency
            },
            style: {
                fontSize: '12px',
                fontFamily: 'Montserrat',
                colors: ["#FF4500"]
            },
            offsetY: -8  // Adjusts the position of the data labels slightly above the line
        },
        colors: ['#FF4560'],
        title: {
            text: 'Monthly Refund Amounts in 2024',
            align: 'center',
            offsetY: 0,
            floating: true,
            style: { fontFamily: 'Montserrat', fontSize: '12px' }
        }
    };

    var monthlyRefundChart = new ApexCharts(document.querySelector("#monthly-refund-chart"), options);
    monthlyRefundChart.render();
});







//Potential Revenue Lost chart


document.addEventListener('DOMContentLoaded', function () {
    var options = {
        series: [{
            name: 'Potential Revenue Lost',
            data: [5000, 6200, 5400, 7100, 6500, 6000, 5900, 5200, 5800, 6000, 6400, 6700] // Sample revenue data in dollars for each month
        }],
        chart: {
            type: 'line',
            height: 200,
            width: 1000,
            toolbar: {
                show: false
            }
        },
        responsive: [{
            breakpoint: 768,
            options: {
                chart: {
                    height: '300px'
                }
            }
        }],
        colors: ['#FF4560'],
        dataLabels: {
            enabled: true,
            formatter: function (val) {
                return "$" + val.toLocaleString();
            },
            offsetY: -10,
            style: {
                fontSize: '12px',
                colors: ["#304758"]
            }
        },
        xaxis: {
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            axisTicks: {
                show: true
            },
            labels: {
                style: {
                    fontFamily: 'Montserrat' // Set font family for x-axis labels
                }
            }
        },
        yaxis: {
            labels: {
                formatter: function (val) {
                    return "$" + val.toLocaleString();
                },
                style: {
                    fontFamily: 'Montserrat' // Set font family for y-axis labels
                }
            },
            title: {
                text: 'Revenue Lost ($)',
                style: {
                    color: '#666',
                    fontFamily: 'Montserrat' // Set font family for y-axis title
                }
            }
        },
        title: {
            text: 'Potential Revenue Lost Due to Abandoned Carts (2024)',
            floating: true,
            align: 'center',
            offsetY: 0,
            style: {
                color: '#444',
                fontFamily: 'Montserrat', // Set font family for title
                fontSize: 12,
                fontWeight: 700
            }
        }
    };

    var potentialRevenueLostChart = new ApexCharts(document.querySelector("#potential-revenue-lost-chart"), options);
    potentialRevenueLostChart.render();
});








document.addEventListener('DOMContentLoaded', function () {
    // Sales by specific product chart showing number of orders per month
    var options = {
        series: [{
            name: 'Orders',
            data: [4, 3, 10, 9, 29, 19, 22, 9, 12, 7, 19, 5, 13, 9, 17, 2, 7, 5]
        }],
        chart: {
            height: 200,
            width: 1000,
            type: 'line',
        },
        forecastDataPoints: {
            count: 10
        },
        stroke: {
            width: 2,
            curve: 'smooth',
            colors: ['#FF5722']
        },
        xaxis: {
            type: 'datetime',
            categories: ['1/11/2000', '2/11/2000', '3/11/2000', '4/11/2000', '5/11/2000', '6/11/2000', '7/11/2000', '8/11/2000', '9/11/2000', '10/11/2000', '11/11/2000', '12/11/2000', '1/11/2001', '2/11/2001', '3/11/2001', '4/11/2001', '5/11/2001', '6/11/2001'],
            tickAmount: 18,
            labels: {
                formatter: function (value, timestamp, opts) {
                    return opts.dateFormatter(new Date(timestamp), 'MMM yy');
                },
                style: {
                    fontSize: '9px',
                    colors: '#666'
                }
            },
        },
        yaxis: {
            title: {
                text: 'Number of Orders',
                style: {
                    fontSize: '9px',
                    color: '#666'
                }
            },
            labels: {
                style: {
                    fontSize: '9px',
                    colors: '#666'
                }
            }
        },
        title: {
            text: 'Monthly Orders Of the Product',
            align: 'left',
            style: {
                fontSize: '12px',
                color: '#666'
            }
        },
        legend: {
            position: 'top',
            horizontalAlign: 'right',
            fontSize: '9px',
            labels: {
                colors: '#666'
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                gradientToColors: ['#FDD835'],
                shadeIntensity: 1,
                type: 'horizontal',
                opacityFrom: 0.9,
                opacityTo: 0.9,
                stops: [0, 100]
            },
        }
    };

    var productNoOfOrdersChart = new ApexCharts(document.querySelector("#product-no-of-orders-chart"), options);
    productNoOfOrdersChart.render();
});







document.addEventListener('DOMContentLoaded', function () {
    // Sales by specific category chart showing number of orders per month
    var options = {
        series: [{
            name: 'Orders',
            data: [4, 3, 10, 9, 29, 19, 22, 9, 12, 7, 19, 5, 13, 9, 17, 2, 7, 5]
        }],
        chart: {
            height: 200,
            width: 1000,
            type: 'line',
        },
        forecastDataPoints: {
            count: 10
        },
        stroke: {
            width: 2,
            curve: 'smooth',
            colors: ['#FF5722']
        },
        xaxis: {
            type: 'datetime',
            categories: ['1/11/2000', '2/11/2000', '3/11/2000', '4/11/2000', '5/11/2000', '6/11/2000', '7/11/2000', '8/11/2000', '9/11/2000', '10/11/2000', '11/11/2000', '12/11/2000', '1/11/2001', '2/11/2001', '3/11/2001', '4/11/2001', '5/11/2001', '6/11/2001'],
            tickAmount: 18,
            labels: {
                formatter: function (value, timestamp, opts) {
                    return opts.dateFormatter(new Date(timestamp), 'MMM yy');
                },
                style: {
                    fontSize: '9px',
                    colors: '#666'
                }
            },
        },
        yaxis: {
            title: {
                text: 'Number of Orders',
                style: {
                    fontSize: '9px',
                    color: '#666'
                }
            },
            labels: {
                style: {
                    fontSize: '9px',
                    colors: '#666'
                }
            }
        },
        title: {
            text: 'Monthly Orders Of the Category',
            align: 'left',
            style: {
                fontSize: '12px',
                color: '#666'
            }
        },
        legend: {
            position: 'top',
            horizontalAlign: 'right',
            fontSize: '9px',
            labels: {
                colors: '#666'
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                gradientToColors: ['#FDD835'],
                shadeIntensity: 1,
                type: 'horizontal',
                opacityFrom: 0.9,
                opacityTo: 0.9,
                stops: [0, 100]
            },
        }
    };

    var categoryNoOfOrdersChart = new ApexCharts(document.querySelector("#category-no-of-orders-chart"), options);
    categoryNoOfOrdersChart.render();
});











document.addEventListener('DOMContentLoaded', function () {
    // Chart for specific category report
    var options = {
        series: [
            {
                name: 'Revenue',
                data: [31, 40, 28, 51, 42, 109, 100]
            },
            {
                name: 'Expenses',
                data: [11, 32, 45, 32, 34, 52, 41]
            }
        ],
        chart: {
            height: 200,
            width: 1000,
            type: 'area',
            zoom: {
                enabled: false
            },
            toolbar: {
                show: false
            }
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            curve: 'smooth',
            width: 2
        },
        colors: ['#00E396', '#FF4560'],
        xaxis: {
            type: 'datetime',
            categories: [
                "2018-09-19T00:00:00.000Z",
                "2018-09-19T01:30:00.000Z",
                "2018-09-19T02:30:00.000Z",
                "2018-09-19T03:30:00.000Z",
                "2018-09-19T04:30:00.000Z",
                "2018-09-19T05:30:00.000Z",
                "2018-09-19T06:30:00.000Z"
            ],
            title: {
                text: 'Date',
                style: {
                    fontSize: '12px',
                    fontFamily: 'Montserrat, sans-serif',
                    color: '#333'
                }
            },
            labels: {
                style: {
                    fontSize: '10px',
                    fontFamily: 'Montserrat, sans-serif',
                    colors: '#333'
                }
            }
        },
        yaxis: {
            title: {
                text: 'Amount (USD)',
                style: {
                    fontSize: '12px',
                    fontFamily: 'Montserrat, sans-serif',
                    color: '#333'
                }
            },
            labels: {
                style: {
                    fontSize: '10px',
                    fontFamily: 'Montserrat, sans-serif',
                    colors: '#333'
                }
            }
        },
        legend: {
            position: 'top',
            horizontalAlign: 'left',
            offsetY: 0,
            offsetX: 10,
            floating: true,
            labels: {
                useSeriesColors: true,
                style: {
                    fontSize: '12px',
                    fontFamily: 'Montserrat, sans-serif'
                }
            }
        },
        tooltip: {
            x: {
                format: 'dd/MM/yy HH:mm'
            },
            y: {
                formatter: (value) => `$${value.toFixed(2)}`
            }
        },
        grid: {
            borderColor: '#e7e7e7',
            strokeDashArray: 5
        }
    };

    var specificCategoryNoOfOrdersChar = new ApexCharts(document.querySelector("#specific-category-no-of-orders-chart"), options);
    specificCategoryNoOfOrdersChar.render();
});



















// Function to render the daily sales report chart
function renderDailySalesChart() {
    const options = {
        series: [
            {
                name: "Total Revenue",
                data: [500, 700, 900, 650, 800, 900, 950] // Daily revenue data
            },
            {
                name: "Number of Orders",
                data: [5, 10, 12, 6, 20, 33, 56] // Daily number of orders
            },
            {
                name: "Average Order Value",
                data: [10, 10, 10, 10, 10, 10, 10] // Average order value per day
            }
        ],
        chart: {
            height: 200,
            width: 600,
            type: 'line',
            zoom: { enabled: false },
            toolbar: { show: false }
        },
        colors: ['#77B6EA', '#FF4560', '#00E396'], // Custom colors for each series
        dataLabels: {
            enabled: true,
            style: {
                fontSize: '9px',
                fontFamily: 'Montserrat, sans-serif' // Custom font for data labels
            }
        },
        stroke: {
            curve: 'smooth',
            width: 2
        },
        grid: { borderColor: '#e7e7e7' },
        markers: { size: 1 },
        xaxis: {
            categories: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'], // Days of the week
            title: {
                text: 'Day',
                style: {
                    fontFamily: 'Montserrat, sans-serif',
                    fontSize: '11px'
                }
            },
            labels: {
                style: {
                    fontFamily: 'Montserrat, sans-serif',
                    fontSize: '11px'
                }
            }
        },
        yaxis: [
            {
                title: {
                    text: 'Total Revenue & AOV',
                    style: {
                        fontFamily: 'Montserrat, sans-serif',
                        fontSize: '9px'
                    }
                },
                min: 0,
                max: 1000, // Adjust based on your data range
                labels: {
                    style: {
                        fontFamily: 'Montserrat, sans-serif',
                        fontSize: '9px'
                    }
                }
            },
            {
                opposite: true,
                title: {
                    text: 'Number of Orders',
                    style: {
                        fontFamily: 'Montserrat, sans-serif',
                        fontSize: '9px'
                    }
                },
                min: 0,
                max: 100, // Adjust based on your data range
                labels: {
                    style: {
                        fontFamily: 'Montserrat, sans-serif',
                        fontSize: '9px'
                    }
                }
            }
        ],
        legend: {
            position: 'top',
            horizontalAlign: 'right',
            floating: true,
            offsetY: -25,
            offsetX: -5,
            labels: {
                useSeriesColors: true,
                style: {
                    fontFamily: 'Montserrat, sans-serif',
                    fontSize: '12px'
                }
            }
        },
        title: {
            text: 'Daily Sales', // Title text
            align: 'left',
            style: {
                fontSize: '12px',
                fontFamily: 'Montserrat, sans-serif',
                color: '#333'
            }
        }
    };

    // Create and render the chart
    const chart = new ApexCharts(document.querySelector("#total-sales-report-chart"), options);
    chart.render();
}

// Initial render
renderDailySalesChart();















// Chart to show the online business growth for sales report page

var options = {
    series: [{
        name: 'Growth',
        data: [2.3, 3.1, 4.0, 10.1, 4.0, 3.6, 3.2, 2.3, 1.4, 0.8, 0.5, 0.2]
    }],
    chart: {
        type: 'bar',
        height: '100%',  // Responsive height
        width: '100%',   // Responsive width
        toolbar: {
            show: false  // Hide toolbar for better print appearance
        }
    },
    responsive: [{
        breakpoint: 768,  // For mobile devices
        options: {
            chart: {
                height: '300px'
            }
        }
    }],
    plotOptions: {
        bar: {
            borderRadius: 8,
            dataLabels: {
                position: 'top',
            },
        }
    },
    colors: ['#28a745'],
    dataLabels: {
        enabled: true,
        formatter: function (val) {
            return val + "%";
        },
        offsetY: -20,
        style: {
            fontSize: '12px',
            colors: ["#304758"]
        }
    },
    xaxis: {
        categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct","Nov", "Dec"],
        position: 'top',
        axisBorder: {
            show: false
        },
        axisTicks: {
            show: false
        },
    },
    yaxis: {
        labels: {
            formatter: function (val) {
                return val + "%";
            }
        }
    },
    title: {
        text: 'Monthly Business Growth in 2024',
        floating: true,
        offsetY: 330,
        align: 'center',
        style: {
            color: '#444'
        }
    }
};

var businessGrowthChart = new ApexCharts(document.querySelector("#business-growth-chart"), options); // Updated ID reference
businessGrowthChart.render();



document.addEventListener('DOMContentLoaded', function () {
    // Chart to show the abandoned cart rate for the abandoned cart report page
    var options = {
        series: [{
            name: 'Abandoned Cart Rate',
            data: [35, 30, 28, 34, 33, 32, 30, 27, 29, 31, 33, 35] // Sample data for each month
        }],
        chart: {
            type: 'bar',
            height: '100%',
            width: '100%',
            toolbar: {
                show: false
            }
        },
        responsive: [{
            breakpoint: 768,
            options: {
                chart: {
                    height: '300px',
                }
            }
        }],
        plotOptions: {
            bar: {
                borderRadius: 8,
                dataLabels: {
                    position: 'top'
                },
            }
        },
        colors: ['#FF5733'],
        dataLabels: {
            enabled: true,
            formatter: function (val) {
                return val + "%";
            },
            offsetY: -20,
            style: {
                fontSize: '12px',
                colors: ["#304758"]
            }
        },
        xaxis: {
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            position: 'top',
            axisBorder: {
                show: false
            },
            axisTicks: {
                show: false
            },
        },
        yaxis: {
            labels: {
                formatter: function (val) {
                    return val + "%";
                }
            }
        },
        title: {
            text: 'Monthly Abandoned Cart Rate in 2024',
            floating: true,
            offsetY: 330,
            align: 'center',
            style: {
                color: '#444'
            }
        }
    };

    var abandonedCartRateChart = new ApexCharts(document.querySelector("#abandoned-cart-rate-chart"), options);
    abandonedCartRateChart.render();
});


document.addEventListener('DOMContentLoaded', function () {
    // Chart to show the orders report  
    var options = {
        series: [{
            name: 'Total Orders Received',
            type: 'column',
            data: [1250, 1300, 1400, 1250, 1500, 1600, 1750, 1900]  // Sample data for monthly total orders
        }, {
            name: 'Total Sales Revenue',
            type: 'column',
            data: [45000, 47000, 51000, 48000, 53000, 55000, 58000, 60000]  // Sample data for monthly revenue
        }, {
            name: 'Orders Completed',
            type: 'line',
            data: [1150, 1200, 1300, 1250, 1400, 1450, 1550, 1600]  // Sample data for monthly completed orders
        }],
        chart: {
            width: 1000,
            height:250,
           
            type: 'line',
            stacked: false
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            width: [1, 1, 4]  // Line chart stroke width for "Orders Completed"
        },
        title: {
            text: 'Monthly Orders and Revenue Analysis (2024)',
            align: 'left',
            offsetX: 110
        },
        xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug'],  // Categories for each month
        },
        yaxis: [
            {
                seriesName: 'Total Orders Received',
                axisTicks: {
                    show: true
                },
                axisBorder: {
                    show: true,
                    color: '#008FFB'
                },
                labels: {
                    style: {
                        colors: '#008FFB',
                    }
                },
                title: {
                    text: "Orders (Units)",
                    style: {
                        color: '#008FFB',
                    }
                },
                tooltip: {
                    enabled: true
                }
            },
            {
                seriesName: 'Total Sales Revenue',
                opposite: true,
                axisTicks: {
                    show: true
                },
                axisBorder: {
                    show: true,
                    color: '#00E396'
                },
                labels: {
                    style: {
                        colors: '#00E396',
                    }
                },
                title: {
                    text: "Revenue (USD)",
                    style: {
                        color: '#00E396',
                    }
                },
            },
            {
                seriesName: 'Orders Completed',
                opposite: true,
                axisTicks: {
                    show: true
                },
                axisBorder: {
                    show: true,
                    color: '#FEB019'
                },
                labels: {
                    style: {
                        colors: '#FEB019',
                    },
                },
                title: {
                    text: "Completed Orders (Units)",
                    style: {
                        color: '#FEB019',
                    }
                }
            },
        ],
        tooltip: {
            fixed: {
                enabled: true,
                position: 'topLeft', // Position of tooltip
                offsetY: 30,
                offsetX: 60
            },
        },
        legend: {
            horizontalAlign: 'left',
            offsetX: 40
        }
    };

    var OrderChart = new ApexCharts(document.querySelector("#OrderChart"), options);
    OrderChart.render();
});













document.addEventListener('DOMContentLoaded', function () {
    // Function to render the top product donut chart
    function renderTopProductsChart(productNames, salesData) {
        var options = {
            series: salesData,  // Array of sales figures for the top 5 products
            chart: {
                type: 'donut',
                height: 350,
                width: 350,
            },
            labels: productNames,  // Array of product names
            dataLabels: {
                enabled: false  // Disable data labels
            },
            responsive: [{
                breakpoint: 780,
                options: {
                    chart: {
                        width: 200
                    },
                    legend: {
                        position: 'bottom'
                    }
                }
            }],
        };

        var chart = new ApexCharts(document.querySelector("#top-products-sales-chart"), options);
        chart.render();
    }

    // Example usage with product names and sales data
    const productNames = [
        'Laptop Pro X',
        'Smartphone Z5',
        'Wireless Earbuds',
        'Smartwatch Series 3',
        'Gaming Keyboard MK20'
    ];

    const salesData = [5000, 4200, 3500, 3100, 2700];

    renderTopProductsChart(productNames, salesData);
});







// chart showing the total profit margin and cost per month in the Profit margin report
document.addEventListener('DOMContentLoaded', function () {
    var options = {
        series: [{
            name: 'Total Profit',
            data: [5000, 7000, 6000, 8000, 9000] // Dummy data for total profit
        }, {
            name: 'Total Cost',
            data: [3000, 4000, 3500, 4500, 5000] // Dummy data for total cost
        }],
        chart: {
            height: 200,
            width: 1000,
            type: 'area'
        },
        dataLabels: {
            enabled: false
        },

        xaxis: {
            categories: ["January", "February", "March", "April", "May"], // Monthly categories
        },
        tooltip: {
            enabled: false // Hiding the tooltip
        },
    };

    var chart = new ApexCharts(document.querySelector("#profit-and-cost-chart"), options);
    chart.render();
});

//chart to show the how different components (e.g., cost of goods, discounts) affect profit margins.
document.addEventListener('DOMContentLoaded', function () {
    var options = {
        series: [{
            name: 'Revenue',
            data: [20000, 15000, 18000, 21000, 17000] // Example revenue for each product
        }, {
            name: 'Cost of Goods',
            data: [12000, 9000, 10000, 13000, 11000] // Example cost for each product
        }, {
            name: 'Discounts',
            data: [2000, 1000, 1500, 1800, 1200] // Example discounts applied to each product
        }, {
            name: 'Profit',
            data: [6000, 5000, 6500, 7200, 4800] // Example calculated profit for each product
        }],
        chart: {
            type: 'bar',
            height: 350,
            stacked: true
        },
        plotOptions: {
            bar: {
                columnWidth: '20%', // Set to a smaller percentage to make bars narrower
                borderRadius: 5
            }
        },
        xaxis: {
            categories: ['Product A', 'Product B', 'Product C', 'Product D', 'Product E'], // Product names
            title: {
                text: 'Products'
            }
        },
        yaxis: {
            title: {
                text: 'Amount ($)'
            }
        },
        tooltip: {
            y: {
                formatter: function (value) {
                    return `$${value}`;
                }
            }
        },
        legend: {
            position: 'top'
        }
    };

    var chart = new ApexCharts(document.querySelector("#component-contribution-to-profit-margin-chart"), options);
    chart.render();
});



















document.addEventListener("DOMContentLoaded", function () {
    initializeCharts();
});

function initializeCharts() {
    var salesByCategoryOptions = {
        chart: {
            type: 'pie',
            height: 300,
            width: 300
        },
        series: [50, 30, 20], // Example data: Adjust these values based on your sales data
        labels: ["Electronics", "Furniture", "Clothing"], // Adjust category labels
        colors: ['#007bff', '#28a745', '#ffc107'],
        title: {
            text: 'Sales by Category',
            align: 'left',
            style: {
                fontSize: '12px', // Font size for the title
                color: '#333',
            },
        },
        dataLabels: {
            style: {
                fontSize: '9px', // Font size for data labels
                colors: ['#000'], // Color for data labels
            },
        },
        tooltip: {
            style: {
                fontSize: '9px', // Font size for tooltip text
            },
        },
        legend: {
            labels: {
                style: {
                    fontSize: '9px', // Font size for legend labels
                },
            },
        },
    };


    var salesByCategoryChart = new ApexCharts(
        document.querySelector("#sales-by-category-chart"),
        salesByCategoryOptions
    );
    salesByCategoryChart.render();

    // Category Growth chart configuration
    var categoryGrowthOptions = {
        chart: {
            type: 'bar',
            height: 250,
        },
        series: [{
            name: 'Growth Rate',
            data: [12, 5, -3], // Example growth rate data per category
        }],
        xaxis: {
            categories: ["Electronics", "Furniture", "Clothing"], // Categories on X-axis
            title: {
                text: 'Categories',
                style: {
                    fontSize: '9px',
                    color: '#333',
                },
            },
        },
        yaxis: {
            title: {
                text: 'Growth Rate (%)',
                style: {
                    fontSize: '9px',
                    color: '#333',
                },
            },
        },
        colors: ['#1f77b4'],
        title: {
            text: 'Category Growth Rate',
            align: 'center',
            style: {
                fontSize: '9px',
                color: '#333',
            },
        },
    };

    var categoryGrowthChart = new ApexCharts(
        document.querySelector("#category-growth-chart"),
        categoryGrowthOptions
    );
    categoryGrowthChart.render();
}



/***************************************************************************************************************************************************************************        Code By Rabbia Ends Here ******************************************************************************************************************************************************************************/



/* ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------Code By SUMRAN Starts Here ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


// Bar chart for sales by region
document.addEventListener('DOMContentLoaded', function () {
    var options = {
        series: [
            {
                name: 'Sales',
                data: [16000, 15000, 13000, 12500, 11000] // Replace with actual sales data
            }
        ],
        chart: {
            type: 'bar',
            height: 400,
            toolbar: {
                show: false
            }
        },
        plotOptions: {
            bar: {
                horizontal: false, // Set to false for vertical bars
                columnWidth: '42%',
                distributed: true
            }
        },
        colors: ['#1E90FF', '#00C853', '#FFAB00', '#FF5252', '#6200EA'], // Colors for each region
        dataLabels: {
            enabled: true,
            formatter: (val) => `$${val.toLocaleString()}`,
            style: {
                fontSize: '14px',
                colors: ['#333']
            }
        },
        xaxis: {
            categories: ['E-11', 'G-9', 'D-17', 'B-17', 'H-12'],
            title: {
                text: 'Regions',
                style: {
                    fontSize: '12px',
                    color: '#333'
                }
            },
            labels: {
                style: {
                    fontSize: '10px',
                    colors: '#333'
                }
            }
        },
        yaxis: {
            title: {
                text: 'Achieved Target',
                style: {
                    fontSize: '15px',
                    color: '#333'
                }
            },
            labels: {
                formatter: (value) => `$${value.toLocaleString()}`, // Format y-axis labels as currency
                style: {
                    fontSize: '10px',
                    colors: '#333'
                }
            }
        },
        tooltip: {
            y: {
                formatter: (value) => `$${value.toLocaleString()}`
            }
        },
        legend: {
            show: false

        },
        grid: {
            borderColor: '#e7e7e7',
            strokeDashArray: 5
        }
    };

    var regionsBySalesChart = new ApexCharts(document.querySelector("#top-performing-regions-chart"), options);
    regionsBySalesChart.render();
});

