
LISTA="$1"
ANT_IFS=$IFS
IFS=$'\n'

if [ -z "$1" ] || [ ! -f "$1" ]; then
    echo "Uso: \$0 \$HOME/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"
    exit 1
fi

for LINEA in `cat "$LISTA" | grep -v '^#' | grep -v '^[[:space:]]*$'`
do
    USUARIO=$(echo $LINEA | awk -F ':' '{print $1}')
    CLAVE=$(echo $LINEA | awk -F ':' '{print $2}')
    FULLNAME=$(echo $LINEA | awk -F ':' '{print $3}')

    if [ -n "$USUARIO" ]; then
        sudo useradd -m -c "$FULLNAME" "$USUARIO"
        echo "$USUARIO:$CLAVE" | sudo chpasswd
        sudo usermod -aG 2PSupervisores "$USUARIO"
    fi
done

IFS=$ANT_IFS
