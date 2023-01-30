$salir=1
function esPrimo ($n) {

    Write-Host "Escribe un numero: "
    $n = Read-Host

    for ($i=2; $i -le $n/2 ; $i++){

        if($n % $i -eq 0){

            return "El numero $n no es primo "        
        }    
    }

    return "El numero $n es primo "
    }


function aleatorio($n1, $n2){

    Write-Host "Escribe un numero: "

    $n1 = Read-Host

    Write-Host "Escribe otro numero: "

    $n2 = Read-Host

    if($n1 -eq $n2){

        return "Los numeros no pueden ser iguales"

    }

    if($n1 -lt $n2){

        $random = Get-Random -Minimum $n1 -Maximum $n2

        Write-Host "Escribe un numero al azar"
        $numeroAzar = Read-Host

    }elseif($n1 -gt $n2){

        $random = Get-Random -Minimum $n1 -Maximum $n2
    
        Write-Host "Escribe un numero al azar"
        $numeroAzar = Read-Host

    }
    do{
        if($random -gt $numeroAzar){
            Write-Host "El numero es más grande"
            Write-Host "Escribe un numero al azar"
            $numeroAzar = Read-Host       
        }
    
        if($random -lt $numeroAzar){
            Write-Host "El numero es más pequeño"
            Write-Host "Escribe un numero al azar"
            $numeroAzar = Read-Host         
        }
    }until($random -eq $numeroAzar)
        Write-Host "Adivinaste!!"
    
}


function lista(){

$lista = New-Object System.Collections.ArrayList


    while($numero -ne 0){
        Write-Host "Escribe un numero"
        $numero = Read-Host

        $lista.Add($numero)
    }

        $ordenada = ($lista | Sort-Object {[int]$_})
        Write-Host  $ordenada
}

function factorizar(){
    $listaf = New-Object System.Collections.ArrayList

    Write-Host "Introduce un numero para factorizar"
    $numf = Read-Host 

   $numf2 = $numf
    do{
        
            if( $numf2 % 2 -eq 0){
                $numf2 = $numf2 / 2
                $listaf.Add(2)   
    
            }elseif($numf2 % 3 -eq 0){
                $numf2 = $numf2 / 3
                $listaf.Add(3)

            }elseif($numf2 % 5 -eq 0){
                $numf2 = $numf2 / 5
                $listaf.Add(5)

            }elseif($numf2 % 7 -eq 0){
                $numf2 = $numf2 / 7
                $listaf.Add(7)
            }else{
                Write-Host $numf2 "es un numero primo"
                
                $numf2 = 1
            }

    }while($numf2 -ne 1)

    Write-Host $numf "=" $listaf

}

while ($salir -eq 1){
    $salir2 = 1
    Write-Host "(1) Para ver si es primo."
    Write-Host "(2) Para jugar a adivinar un numero"
    Write-Host "(3) Para ordenar numeros en una lista"
    Write-Host "(4) Para factorizar un numero"
    $opciones = Read-Host

        switch ($opciones){

            1{esPrimo}

            2{aleatorio}

            3{lista}
            
            4{factorizar}

            default{"No es una opcion valida"}
        }



    Write-Host "Escribe (1) para volver al menu y (0) para salir: "
    $salir = Read-Host
}