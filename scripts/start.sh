echo alu
echo "***************"
date
echo "***************"
su -l pi -c $FRR_HOME/ferronron_core/scripts/miseajour.sh
. $FRR_HOME/ferronron_core/scripts/init.sh
python3 $FRR_HOME/ferronron_core/scripts/interrupteurs.py &
python3 $FRR_HOME/ferronron_core/scripts/play.py &
. $FRR_HOME/ferronron_core/scripts/supprime.sh
. $FRR_HOME/ferronron_core/scripts/upload.sh
python3 $FRR_HOME/ferronron_core/scripts/telecharge.py &
