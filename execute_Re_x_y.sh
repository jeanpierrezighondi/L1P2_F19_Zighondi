
echo "Running the input preparation for the turbulent simulation"
#prints the message in the terminal
n=1
#initialize the variable n to 1
#loop on the Reynolds number
for Re in 10000 50000 100000 500000 1000000
do
#initialize m to 1
	m=1
#loop on the mesh xMesh and yMesh
	for xMesh in 512 1024
do
o=1
for yMesh in 128 256
do
#create a new folder JeanPierre${n}_${m}_${o}, in the parent folder, by replacing n and m and o by their values in
	mkdir JeanPierre${n}_${m}_${o}
#go to folder originalF
	cd originalF
#Copy the file inputOrig to input.dat by replacing the occurance of rrrrrrr by the Reynolds number, xxxx by the xMesh direction and yyy by yMesh
sed -e "s/rrrrrrr/${Re}/" -e "s/xxxx/${xMesh}/" -e "s/yyy/${yMesh}/" inputOrig > input.dat
#copy the files input.data  to the folder JeanPierre${n}_${m}_${o}(where m, n and o are replaced by their values)
cp input.dat ../JeanPierre${n}_${m}_${o}
#printing a message on the terminal
echo "Creating the folder JeanPierre${n}_${m}_${o} containing the files 1) input.dat with Reynolds number = ${Re} and 2D mesh of ${xMesh} x ${yMesh} "
#go to the parent folder
cd ../
#incrementing the variable o, m and n 
o=$(( $o + 1 ))
done
m=$(( $m + 1 ))
done
n=$(( $n + 1 ))
done
echo "input file preparation is done"
