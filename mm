#include <stdio.h>
sudo cp -r fake $1;
sudo chmod g+rw $1/fake;
sudo chmod g+rw $1/fake/*;
sudo mv $1/fake $1/$2;
#sudo rename "s/fake/${2}/" $1/$2/fake.*;
sudo mv $1/$2/fake.module $1/$2/$2.module;
sudo mv $1/$2/fake.install $1/$2/$2.install;
sudo mv $1/$2/fake.views.inc $1/$2/$2.views.inc;
sudo mv $1/$2/fake.info $1/$2/$2.info;
sudo mv $1/$2/fake.views_default.inc $1/$2/$2.views_default.inc;
sudo sed "s/fake/${2}/g" -i  $1/$2/$2.* ;
