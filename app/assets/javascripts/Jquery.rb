
Hay un prob con el la imagen del Modal en Judy Hazbun. 

Yo quiero que el tamaño del contenedor '#modal-image' cambie de acuerdo al tamaño de la imagen que contiene.
Hice esto:

			$('#modal-image').html("<img src='" + $imageName + "') >");
        var $image = $('#modal-image > img')
        

        $image.on('load', function() {
            
            var $imgHeight = $image.height()
            $('#modal-image').height($imgHeight)
            alert($image.height())
        });


Despues del load, me da el tamaño correcto del la imagen y funciona perfecto... la primera vez.
Una vez que la imagen esta en cache, me return siempre height 0. 

Ahora, me sigue mandando el alert, osea que si esta entrando en el event del load. 
Quiere decir que por alguna razon me esta devolviendo un height de 0.


	Observaciones: Jquery esta interpretando que la imagen tiene un height de zero. 

			1. Eso puede ser pq lo esta tomando con una imagen escondida.
			2. Lo esta tomando antes de que la imagen se load.
			3. Lo esta tomando con una imagen equivocada. 
			