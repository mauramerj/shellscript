#!/bin/bash
clear;
comando(){

echo "Pressione ENTER para voltar"   
read VOLTAR   
}

		while true
		do
	        clear


echo "                                                                                          "
   echo "===================================================================="
   echo "|                    ESCOLHA UMA OPÇÃO                             |"
   echo "|                                                                  |"
   echo "===================================================================="
   echo "1 - Exibir a versão do Kernel que está sendo utilizada; (uname -r) "
   echo "2 - Exibir o usuário que está logado no sistema; (who)"
   echo "3 - Exibir todos os grupos existentes; (cat /etc/group)"
   echo "4 - Exibir os dispositivos do sistema; (ls /dev)"
   echo "5 - Exibir o caminho do diretório em que se encontra; (pwd)"
   echo "6 - Sair."
   
echo -ne "\n: "
read op

case $op in

	1) while true; do
           clear
           uname -r
           comando

           while [ -n "$VOLTAR" ]; do
           clear
           uname -r
           comando
           done

           if [ -z "$VOLTAR" ]; then
           break
           fi
           done
           ;;

	2) while true; do
           clear
           who 
           comando

           while [ -n "$VOLTAR" ]; do
           clear
           who 
           comando
           done

           if [ -z "$VOLTAR" ]; then
           break
           fi
           done
           ;;

	3) while true; do
           clear
           cat /etc/group
           
           comando
   
           while [ -n "$VOLTAR" ]; do
           clear
           cat /etc/group
           comando
           done
            
           if [ -z "$VOLTAR" ]; then
           break
           fi
           done
           ;;
	
	4) while true; do
           clear
           ls /dev
           comando

           while [ -n "$VOLTAR" ]; do
           clear
           ls /dev
           comando
           done

           if [ -z "$VOLTAR" ]; then
           break
           fi
           done
           ;;
       
	5) while true; do
           clear
           pwd
           comando

           while [ -n "$VOLTAR" ]; do
           clear
           pwd
           comando
           done

           if [ -z "$VOLTAR" ]; then
           break
           fi
           done
           ;;

	6) clear ; 
           echo "Encerrando o Programa" ; 
	   sleep 1; 
	   clear; 
	   break
           ;;

        *) echo "										" ; 
	   echo "Por favor digite números de 1 até 5 ou tecle 6 para encerrar o programa" ; 
	   sleep 1 ; 

   esac
done
