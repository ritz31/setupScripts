echo "######################################"
echo "             MAKE A CHOICE"
echo "######################################"
echo "1> Start Server"
echo "2> Stop Server"
echo "3> Restart Server"
echo "4> Build Server"
echo "5> Rebuild + Restart (with controll on restart)"
echo ""
echo "Make sure that this script is run in the root directory containing docker-compose.yml"
read -p "" choice

if [ $choice == 1 ]
then
    sudo docker-compose up -d
elif [ $choice === 2 ]
then
    sudo docker-compose down
elif [ $choice == 3 ]
then
    sudo docker-compose down
    sudo docker-compose up -d
elif [ $choice == 4 ]
then
    sudo docker-compose build
elif [ $choice == 5 ]
    sudo docker-compose build
    read -p "Press ENTER to take down your restart your Server -> " a
    sudo docker-compose down
    sudo docker-compose up -d
else
    echo "Invalid Choice!"
fi