#include <stdio.h>
cp -r /var/www/mmd/fake $1;
chmod g+rw $1/fake;
chmod g+rw $1/fake/*;
mv $1/fake $1/$2;
mv $1/$2/fake.module $1/$2/$2.module;
mv $1/$2/fake.install $1/$2/$2.install;
mv $1/$2/fake.views.inc $1/$2/$2.views.inc;
mv $1/$2/fake.info $1/$2/$2.info;
mv $1/$2/fake.views_default.inc $1/$2/$2.views_default.inc;
sed -i ''  "s/fake/${2}/g"  $1/$2/$2.*   ;
