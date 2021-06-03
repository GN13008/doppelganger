let array_start = document.getElementById("reservation_start_date_3i");
    array_start.addEventListener("click", (event) => {
    let start_date_obj = array_start.selectedOptions;
    let start_date = start_date_obj[0].innerText;
    

    let array_end = document.getElementById("reservation_end_date_3i");
    array_end.addEventListener("click", (event) => {
        let end_date_obj = array_end.selectedOptions;
        let end_date = end_date_obj[0].innerText;
        let total = parseInt(end_date) - parseInt(start_date);
        const number_days = document.querySelector('#number-days');
        number_days.innerText = "jours: " + total;
        const price_h = document.querySelector('#price-h').innerText;
        const price = document.querySelector('#price');
        const prix = total * parseFloat(price_h) ;
        price.innerText = `prix: ${prix}$`;
    });
});
                





