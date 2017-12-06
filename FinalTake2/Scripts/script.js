
var ajax_call = function () {
    

    $.ajax({
        url: "/Items/BidList",
        type: "Get",
        data: {
            id2: 1
        },
        success: function (data) {
            $('#tmp').remove();
            $('#test').append(`<table id="tmp"></table>`);
            $('#tmp').append(`<tr> <th>Bidder</th> <th>Price<th> </tr>`);


            $.each(data.name, function (i, item) {
                $('#tmp').append(`<tr> <td>` + item + ` </td> <td>  test </td> </tr>`);
            })



        }
    });
}

var interval = 1000 * 5;

window.setInterval(ajax_call, interval);

