#!/bin/bash
#

ALE=$(($RANDOM%4))
CRIADOR="Pedro Utida"
RM=94342



function comeco(){
  case $ALE in
        *0*)
            echo "Mr. Robot Iniciado!"
        	echo 
        	echo "No caso de precisar de ajuda digitar 'doc' para olhar a documentação"
        	echo
        	read -p "Mr. Robot espera a sua pergunta: " PERGUNTA
        ;;
        *1*)
            	echo "Meu nome é Mr. Robot!"
        	echo 
        	sleep 1
        	read -p "Pergunte algo! : " PERGUNTA
        ;;
	*2*)
		echo "Me chamo Mr. Robot! Como posso ajudar?"
		echo
		echo "Caso tenha se perdido digite 'doc' "
		echo
		read -p "Caso não, comece a me fazer perguntas!: " PERGUNTA
	;;
	*3*)
		echo "Prazer! Me chama de Mr. Robot."
		echo
		echo "Caso tenha algum tipo de duvida veja a documentação digitando 'doc'"
		echo
		read -p "Se não possuir duvidas sobre comecemos as perguntas: " PERGUNTA
	
	;;
        esac

}

function namorar(){
case $ALE in
	*0*)
	       echo "Eu não namoro, sou uma inteligência artificial"
	  ;;
  	*1*)
	       echo "Namorar não possuo tais desejos"
	  ;;
 	*2*) 
	       echo "Isso é um segredo"
	  ;;
	  *3*)
	  	echo "Isso não vem ao caso no momento..."
	  
	  ;;
esac

}
function documentacao(){
	echo "Esse Mr. Robot foi desenvolvido com intuito de apredizado."
	echo
	echo "Criado pelo $CRIADOR"
	sleep 1
	echo 
	echo "Para usa-lo, digite robo e quando aparecer a mensagem de pergunta, responda com palavras minusculas"
	sleep 1
	echo   
	echo "Para essa mensagem, digite doc"
}


function servicos(){
	echo -e  "Os serviços rodando por agora são: "
	echo
		ss -atun
}

function atual(){
	echo "Atualizando..."
	sudo apt update
}



function vulnerabilidade(){
	read -p "Qual o host que irei escanear hoje?(Digite os numeros do IP): " IP
		nmap -A -sC -sV $IP 2>/dev/null
}

function versao ()
{
	echo "Posso estar numa versão antiga irei checar!"
	echo "Checando Reparos..."
	sleep 1
		sudo apt upgrade -y
	echo "Atualizado para a versão mais recente!"
}
function tempo(){
h=$(date +"%H")
	if [ $h -gt 6 -a $h -le 12 ]
	then
		echo "Bom Dia"
	elif [ $h -gt 12 -a $h -le 18 ]
	then 
		echo "Boa Tarde"
	elif [ $h -gt 18 -a $h -le 22 ]
	then
		echo "Boa Noite"
	else
		echo " Tarde da noite, acho melhor descansar"
	fi
		echo "Tomar um ar é bom as vezes."
}
function criador(){
	echo -e "meu criador é $CRIADOR e seu RM é $RM"

}

function listagem() {
	read -p "Vamos ver a conectividade do IP por favor digite ele: " HOST
	LISTAR="ping -c4 -q $HOST" 
	$LISTAR
	if [ $? -eq 0 ]
	then
		echo -e "\nO O IP se encontra ativo"
	else
		echo -e "\nO O IP se encontra inativo"
	fi
}

function destruir(){
case $ALE in 
	*0*)
		echo "Sequência de auto destruição!"
		sleep 1
		init 6
    ;;
	*1*)
		echo "KABOOOM!"
		sleep 1
		shutdown -s
	;;
	*2*)
		echo "Adeus foi bom enquanto durou!"
		sleep 1
		poweroff
	;;
	*3*)
		echo "Iremos nos encontrar em breve...."
		sleep 1
		reboot
	;;
esac
}

comeco

case $PERGUNTA in
	*"list"*)
		listagem
          ;;
	*"namor"*)
		namorar
	  ;;
        *"vulnera"*)
	      	vulnerabilidade
	  ;;
        *"servi"*)      
		servicos
	  ;;
        *"atual"*)
	        atual
	  ;;    
        *"cria"*)
	        criador 
      	  ;;
	*"clima"*|*"tempo"*|*"hora"*|*"hoje"*)
		tempo
          ;;
	*"versão"*|*"versao"*)
		versao
          ;;
	*"destr"*)
		destruir
	  ;;
  	*"doc"|"documentacao")
		documentacao
esac
