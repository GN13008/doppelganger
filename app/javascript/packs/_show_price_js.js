let array_start = document.getElementById("reservation_start_date_3i");
    array_start.addEventListener("click", (event) => {
    let start_date = array_start.selectedOptions[0].innerText;

    let array_end = document.getElementById("reservation_end_date_3i");
    array_end.addEventListener("click", (event) => {
        let end_date = array_end.selectedOptions[0].innerText;

        let total = parseInt(end_date) - parseInt(start_date) + 1;

        const number_days = document.querySelector('#number-days');
        number_days.innerText = "days: " + total;
        const price_h = document.querySelector('#price-h').innerText;
        const prix = total * parseFloat(price_h) ;
        price.innerText = `price: ${prix}$`;
    });
});
                
let array_end = document.getElementById("reservation_end_date_3i");
    array_end.addEventListener("click", (event) => {
        let end_date = array_end.selectedOptions[0].innerText;
        let start_date = document.getElementById("reservation_start_date_3i").selectedOptions[0].innerText;

        let total = parseInt(end_date) - parseInt(start_date) + 1;

        const number_days = document.querySelector('#number-days');
        number_days.innerText = "days: " + total;
        const price_h = document.querySelector('#price-h').innerText;
        const prix = total * parseFloat(price_h) ;
        price.innerText = `price: ${prix}$`;
    });




