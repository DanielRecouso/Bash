#!bin/bash
clear
    par(){
        
        RESTO=$((numpar % 2))
        if [ $RESTO -eq 0 ] 
        then
            echo "El número $numpar es par"
        else
            echo "El número $numpar es impar"
        fi
    }

salir0=0
    while [ $salir0 == 0 ]
    do
        echo "      ╔══════════════════════════════════════════════════╗"
        echo "      ║≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡ BIENVENID@ ≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡║"              
        echo "      ╠═════════════════────────────────═════════════════╣"
        echo "      ║                 Elige una opción                 ║"
        echo "      ║                                                  ║"
        echo "      ║  1.Crea un directorio                            ║"
        echo "      ║  2.Calcular resta/multi/suma                     ║"
        echo "      ║  3.Comprueba si un número es par                 ║"
        echo "      ║  4.Comprobar el espacio que  ocupa un archivo    ║"
        echo "      ║                                                  ║"
        echo "      ╚══════════════════════════════════════════════════╝"  
        read numero
            case $numero in           
                1) 
                    read -p "Escribe el nombre del directorio : " nombredir
                    directorio=`mkdir $nombredir`
                    echo $directorio
                ;;
                2)
                    salir1=0
                    while [ $salir1 == 0 ]
                    do
                    read -p "Escribe un numero : " num
                    read -p "Escribe  otro numero: " num2
                    echo "─────────────────────────────"
                    echo "Escibe que operacion realizar: "
                    echo "────────────────────────────────────" 
                    echo "1.Resta    2.Multiplicación   3.Suma"
                    read -p "" op
                    case $op in
                    1)
                        rest=$(($num - $num2))
                        echo "─────────────────────────"
                        echo La resta da $rest
                    ;;
                    2)
                        mult=$(($num * $num2))
                        echo "─────────────────────────"
                        echo La multiplicación da $mult
                    ;;
                    3)  
                        sum=$(($num + $num2))
                        echo "─────────────────────────"
                        echo La suma da $sum
                    ;;
                    *)
                        echo "No es una opción válida"
                    ;;
                    esac
                        echo "┌────────────────────────────────────────┐"
                        echo "│0->Para volver a operar │ 1->Para salir │"
                        echo "└────────────────────────────────────────┘"
                        read salir1
                        clear
                        done
                ;;
                3)
                    read -p "Introduzca un número : " numpar
                    par
                ;;
                4)
                    salir2=0
                    while [ $salir2 == 0 ]
                    do
                        espacio=`du -sh`
                        read -p "Escribe un archivo(y su extensión e.j: hola.txt) para comprobar el espacio que ocupa: " comprobar
                        echo $espacio $comprobar
                
                    echo "┌───────────────────────────────────────────────┐"
                    echo "│0->Para comprobar otro archivo │ 1->Para salir │"
                    echo "└───────────────────────────────────────────────┘"
                    read salir2
                    clear
                    done
                ;;                           
                *)
                    echo "No es una opción válida"
                ;;
                esac

                    echo "┌────────────────────────────────────────────────────┐"
                    echo "│0->Para volver al menu │ 1->Para salir del programa │"
                    echo "└────────────────────────────────────────────────────┘"
        read salir0
        clear
        
    done
    clear