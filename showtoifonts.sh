for f in ~/figletfonts/*
do 
  fs=$(basename $f)
  fname=${fs%%.tlf}
  toilet -f $fname $fname
done
