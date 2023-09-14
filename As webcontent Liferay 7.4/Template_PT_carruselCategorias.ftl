<!-- Inicialización de las bibliotecas -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="../css/misEstilos.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="../js/carrusel.js"></script>


<!-- Código HTML5 del Contenedor -->
<div class="container">

	<#if (tituloH2.getData())??>
		<h2>${tituloH2.getData()}</h2>
	</#if>

    <div class="cenfa">━━━━━ <i class="fas fa-leaf tile"></i> ━━━━━</div>
	<br>
	<#if (descripcionCarrusel.getData())??>
		<p class="paragrahTitle">${descripcionCarrusel.getData()}</p>
	</#if>

<#if tarjetaCarrusel.getSiblings()?has_content>
	
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<#list tarjetaCarrusel.getSiblings() as cur_tarjetaCarrusel>
					<div class="swiper-slide">
						<#if (cur_tarjetaCarrusel.imagenTarjetaCarrusel.getData())?? && cur_tarjetaCarrusel.imagenTarjetaCarrusel.getData() != "">
							<div class="card">
								<i class="fas ${cur_tarjetaCarrusel.imagenTarjetaCarrusel.getData()}"></i>
								<#if (cur_tarjetaCarrusel.textoTarjetaCarrusel.getData())?? && cur_tarjetaCarrusel.textoTarjetaCarrusel.getData() != "">
									<p style="color: #222; font-size: 15px;">${cur_tarjetaCarrusel.textoTarjetaCarrusel.getData()}</p>
								</#if>
							</div>
						</#if>	
					</div>
				</#list>	
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>	
</#if>	
</div>

<style>
.container {
    text-align: left;
}

.container h2 {
    font-size: 22px;
    color: #222;
    font-weight: bold;
}

.container .cenfa, .tile {
    color: #0da487;
    height: 2px;
	font-size: 20px
}

.container p, paragrahTitle {
    font-size: 14px;
    color: #4a5568;
}

.container .swiper-container {
    margin-top: 20px;
}

.container .swiper-slide {
	margin-left: 5px;
	width: 46px;
}

.container .swiper-slide:last-child {
    margin-right: 0; /* Sin margen a la derecha para la última tarjeta */
}

.container .swiper-slide .card {
    height: 100px;
    width: 46px;
    background-color: #f8f8f8;
    display: flex;
    flex-direction: column;
    align-items: left;
    justify-content: center;
    transition: background-color 0.3s;
	white-space: nowrap; /* Evita que el texto se divida en varias líneas */
    overflow: hidden; /* Oculta cualquier contenido que se desborde */
    text-overflow: ellipsis; /* Agrega puntos suspensivos (...) al final del texto cortado */
}


.container .swiper-slide .card i {
    font-size: 20px;
	text-align: center;		
}

.container .swiper-slide .card p {
    color: #222;
    font-size: 15px;
    transition: color 0.3s;
}

.container .swiper-slide .card:hover {
    background-color: #0da487;
    background-image: url('../documents/d/global/patron'); //Poner ruta relativa alcanzable de la imagen almacenada en Documents and Media de la Document Library
}

.container .swiper-slide .card:hover p {
    color: #fff;
    font-size: 16px;
}


/* Estilos para dispositivos de escritorio (a partir de 768px) */
@media (min-width: 768px) {
	.container h2 {
		font-size: 23px;
	} 
	.container .swiper-slide {
		margin-left: 5px;
		width: 76px;
    }

    .container .swiper-slide:last-child {
        margin-right: 0; /* Sin margen a la derecha para la última tarjeta */
    }

    .container .swiper-slide .card {
        height: 111px;
        width: 76px;
    }
}
/* Estilos para dispositivos de escritorio (a partir de 1960px) */
@media (min-width: 1960px) {
	.container h2 {
		font-size: 23px;
	} 
    .container .swiper-slide {
		margin-left: 5px;
		width: 190px;
    }
    .container .swiper-slide:last-child {
        margin-right: 0; /* Sin margen a la derecha para la última tarjeta */
    }

    .container .swiper-slide .card {
        height: 150px;
        width: 190px;
    }

}

</style>

<script>
// Código JavaScript/jQuery
$(document).ready(function () {
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 'auto',
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
});
</script>