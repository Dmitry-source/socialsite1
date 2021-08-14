//debug status variables
let debug = true;

let items = {}
let basket = []

items = {

    '1' : {
        'id' : '1',
        'name' : 'Увлажнитель воздуха STARWIND SHC1322, 3л, белый',
        'image' : '/static/shop/images/items/1.png',
        'price' : '1650'
    },

    '2' : {
        'id' : '2',
        'name' : 'Триммер PHILIPS HC3521/15 серебристый/черный',
        'image' : '/static/shop/images/items/2.png',
        'price' : '2290'
    },

    '3' : {
        'id' : '3',
        'name' : 'Фитнес-трекер HONOR Band 5 CRS-B19S, 0.95", розовый',
        'image' : '/static/shop/images/items/3.png',
        'price' : '2390'
    },

    '4' : {
        'id' : '4',
        'name' : 'Мышь A4TECH Bloody V3, игровая, оптическая, проводная, USB, черный',
        'image' : '/static/shop/images/items/4.png',
        'price' : '960'
    },

    '5' : {
        'id' : '5',
        'name' : 'Фитнес-трекер HONOR Band 5 CRS-B19S, 0.95", черный',
        'image' : '/static/shop/images/items/5.png',
        'price' : '2390'
    },

    '6' : {
        'id' : '6',
        'name' : 'Пылесос SINBO SVC 3497, 2500Вт, синий/серый',
        'image' : '/static/shop/images/items/6.png',
        'price' : '5670'
    },

    '7' : {
        'id' : '7',
        'name' : 'Планшет DIGMA Optima 7 Z800 Android 10.0 серебристый',
        'image' : '/static/shop/images/items/7.png',
        'price' : '9490'
    },

    '8' : {
        'id' : '8',
        'name' : 'Монитор игровой ACER Nitro RG241YPbiipx 23.8" черный',
        'image' : '/static/shop/images/items/8.png',
        'price' : '16 800'
    },

    '9' : {
        'id' : '9',
        'name' : 'Экшн-камера DIGMA DiCam 310 4K, WiFi, черный',
        'image' : '/static/shop/images/items/9.png',
        'price' : '2290'
    },

    '10' : {
        'id' : '10',
        'name' : 'Умная колонка ЯНДЕКС c голосовым помощником Алисой, серебристый',
        'image' : '/static/shop/images/items/10.png',
        'price' : '5670'
    },

    '11' : {
        'id' : '11',
        'name' : 'Квадрокоптер DJI Mini 2 MT2PD Fly More Combo с камерой, серый',
        'image' : '/static/shop/images/items/11.png',
        'price' : '60 990'
    },

    '12' : {
        'id' : '12',
        'name' : 'Шлем виртуальной реальности HTC Vive PRO Eye EEA, черный/синий',
        'image' : '/static/shop/images/items/12.png',
        'price' : '11 960'
    },

    '13' : {
        'id' : '13',
        'name' : 'МФУ лазерный CANON i-Sensys MF445dw, A4, лазерный, черный',
        'image' : '/static/shop/images/items/13.png',
        'price' : '35 310'
    },

    '14' : {
        'id' : '14',
        'name' : 'Смарт-часы AMAZFIT Bip U, 1.43", зеленый / зеленый',
        'image' : '/static/shop/images/items/14.png',
        'price' : '4490'
    },

    '15' : {
        'id' : '15',
        'name' : 'Кофемашина PHILIPS EP1224/00, серый/черный',
        'image' : '/static/shop/images/items/15.png',
        'price' : '29 990'
    },

    '16' : {
        'id' : '16',
        'name' : 'Гироскутер MIZAR MZ10,5CN, 10.5", карбон',
        'image' : '/static/shop/images/items/16.png',
        'price' : '12 990'
    },

}


$(document).ready(function(){

    mainInit();

});


function mainInit() {

    if (debug === true) {
        console.log("main: mainInit()");
    }

    let html = ""

    for(itemsKey in items){

        let item = items[itemsKey]

        html +=

            '<div id="item-'+ itemsKey +'" class="item" onmouseover="onmouseOver('+ itemsKey +')" onmouseleave="onmouseLeave('+ itemsKey +')">' +

            '<div id="item-image-'+ itemsKey +'" class="item-image">' +
                '<img src="'+ item['image'] +'">' +
            '</div>' +

            '<div id="item-name-'+ itemsKey +'" class="item-name">' +
                item['name'] +
            '</div>' +

            '<div id="item-price-'+ itemsKey +'" class="item-price">' +
                item['price'] + ' ₽' +
            '</div>' +

            // Add to basket
            '<button type="button" id="item-addtobasket-'+ itemsKey +'" class="item-addtobasket">' +
                '<div class="item-baskettext"> Добавить в корзину</div>' +
            '</button>' +

            // Presense in basket
            '<button type="button" id="item-presenseinbasket-'+ itemsKey +'" class="item-presenseinbasket">' +
                '<div class="item-baskettext">В корзине</div>' +
            '</div>' +

            '</button>'

    }


    document.getElementById("catalog-content").innerHTML = html;


}



function onmouseOver(itemsKey){

    if (debug === true) {
        console.log("main: onmouseOver()");
    }

    let presenseinbasket = false

    for (basketKey in basket){

        if (basket[basketKey] == itemsKey){

            presenseinbasket = true

        }
        
    }


    if (presenseinbasket == false){

        $("#item-name-" + itemsKey).css({'top':'214px', 'bottom':'103px'});
        $("#item-price-" + itemsKey).css({'top':'292px', 'bottom':'65px'});
        $("#item-addtobasket-" + itemsKey).css({'display':'block'});
        
        $("#item-addtobasket-" + itemsKey).attr('onclick', 'addToBasket('+ itemsKey +')');

    }
    
}


function onmouseLeave(itemsKey){

    if (debug === true) {
        console.log("main: onmouseLeave()");
    }

    let presenseinbasket = false

    for (basketKey in basket){

        if (basket[basketKey] == itemsKey){

            presenseinbasket = true

        }
        
    }


    if (presenseinbasket == false){

        $("#item-name-" + itemsKey).css({'top':'244px', 'bottom':'73px'});
        $("#item-price-" + itemsKey).css({'top':'322px', 'bottom':'35px'});
        $("#item-addtobasket-" + itemsKey).css({'display':'none'});
        
    }


}


function addToBasket(itemsKey){

    if (debug === true) {
        console.log("main: addToBasket()");
    }


    // let item = {}
    // item['id'] = itemsKey
    // item ['count'] = 1

    basket.push(itemsKey) 

    if (debug === true) {
        console.log("basket: " + basket);
    }

    $("#item-name-" + itemsKey).css({'top':'214px', 'bottom':'103px'});
    $("#item-price-" + itemsKey).css({'top':'292px', 'bottom':'65px'});
    $("#item-addtobasket-" + itemsKey).css({'display':'none'});
    $("#item-presenseinbasket-" + itemsKey).css({'display':'block'});
    $("#item-presenseinbasket-" + itemsKey).attr('onclick', 'deleteFromBasket('+ itemsKey +')');


    document.getElementById("basket-count").innerHTML = basket.length;
   

}


function deleteFromBasket(itemsKey){

    if (debug === true) {
        console.log("main: deleteFromBasket()");
    }

    
    let index = basket.indexOf(itemsKey)

    if (index > -1) {
        basket.splice(index, 1);
      }


    if (debug === true) {
        console.log("basket: " + basket);
    }

    $("#item-name-" + itemsKey).css({'top':'214px', 'bottom':'103px'});
    $("#item-price-" + itemsKey).css({'top':'292px', 'bottom':'65px'});
    $("#item-presenseinbasket-" + itemsKey).css({'display':'none'});
    $("#item-addtobasket-" + itemsKey).css({'display':'block'});
    $("#item-addtobasket-" + itemsKey).attr('onclick', 'addToBasket('+ itemsKey +')');



    document.getElementById("basket-count").innerHTML = basket.length;
   

}





