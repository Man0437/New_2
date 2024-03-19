#!bin/bash

echo "Name of file hostname"
read name_file
echo "Name of directory"
read name_dir
echo "Name of file ps"
read name_ps
mkdir $PWD/$name_dir

#Go in new dir // den/Home/Git
cd name_dir
touch name_file

echo "Name of tar"
read name_tar

#Create File with information // den/Home/Git
hostname -I >> $PWD/$name_file
ls -l >> $PWD/$name_file
chmod 700 $name_file
ps -A > $PWD/$name_tar 
chmod 700 $PWD/$name_ps

#Create new tar // den/Home/Git
tar -cf $PWD/$name_tar $name_ps $name_file
cp $name_tar $HOME 
cd
#den/Home
tar -x $name_tar

#Delete the tar with files, then read the files with information // den/Home
rm -rf $name_tar
cat $name_file
cat $name_ps
sudo chown -su root



