if [ "$var" != "main_value" ]
then
	echo "ERROR"
fi
var="sourced_value"
my_var="sourced_value"
# the following line is a syntax error
# local local_var="local_value"
my_unset_var="value"
unset my_unset_var
