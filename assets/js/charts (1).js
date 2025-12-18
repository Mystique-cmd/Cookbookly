document.addEventListener('DOMContentLoaded', function() {

    // Example: Bar Chart for Recipe Counts per Category
    const recipeChartCtx = document.getElementById('recipeChart');
    if (recipeChartCtx) {
        // Fetch data from a PHP script
        fetch('data/recipe_chart_data.php')
            .then(response => response.json())
            .then(data => {
                new Chart(recipeChartCtx, {
                    type: 'bar',
                    data: {
                        labels: data.labels, // Category names
                        datasets: [{
                            label: '# of Recipes',
                            data: data.values, // Recipe counts
                            backgroundColor: 'rgba(0, 204, 153, 0.7)',
                            borderColor: 'rgba(0, 204, 153, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        },
                        responsive: true,
                        plugins: {
                            legend: {
                                position: 'top',
                            },
                            title: {
                                display: true,
                                text: 'Recipes per Category'
                            }
                        }
                    }
                });
            })
            .catch(error => console.error('Error fetching recipe chart data:', error));
    }

    // Example: Line Chart for User Registrations over Time
    const userChartCtx = document.getElementById('userChart');
    if (userChartCtx) {
        // Fetch data from a PHP script
        fetch('data/user_chart_data.php')
            .then(response => response.json())
            .then(data => {
                new Chart(userChartCtx, {
                    type: 'line',
                    data: {
                        labels: data.labels, // Dates or months
                        datasets: [{
                            label: 'New Users',
                            data: data.values, // User counts
                            fill: false,
                            borderColor: 'rgb(235, 45, 140)',
                            tension: 0.1
                        }]
                    },
                    options: {
                        responsive: true,
                        plugins: {
                            legend: {
                                position: 'top',
                            },
                            title: {
                                display: true,
                                text: 'User Registrations Over Time'
                            }
                        }
                    }
                });
            })
            .catch(error => console.error('Error fetching user chart data:', error));
    }

});
