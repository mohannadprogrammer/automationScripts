#bin 
# echo "all the errors down there : >"



# echo "the nubmer of error is : $(tail -n 2000  ./odoo17.log | grep -c "ERROR")"

# tail -n 2000  ./odoo17.log | grep "ERROR"

# echo "all the warnings down there : >"
# tail -n 100 ./odoo17.log | grep "WARNING"

$con = $(ssh  root@base.saas.syssco.com.sa)

if [ $con 0 ]; then
    echo "SSH connection to base.saas.syssco.com.sa failed. Exiting script."
    exit 1
cd /opt/odoo/odoo17/syssco

git pull origin main 

sudo systemctl restart odoo17

exit 0