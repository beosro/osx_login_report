#These lines will report on successful logins for all users since midnight of the previous day
echo "****BEGIN successful login report since midnight yesterday****"
grep AuthenticationAllowed /var/log/accountpolicy.log
echo "****END successful login report since midnight yesterday****"
echo ""
echo ""

#Uncomment the block below to extend the report of successful logins to all logged history
echo ""
echo ""
echo "****BEGIN successful login report for all logged history (up to midnight yesterday)****"
zgrep AuthenticationAllowed /var/log/accountpolicy.log.*
echo "****END successful login report for all logged history (up to midnight yesterday)****"
echo ""
echo ""

#Uncomment the block below to report all unsuccessful login attempts since midnight of the previous day
echo ""
echo ""
echo "****BEGIN failed login report since midnight yesterday****"
grep "Failed to authenticate" /private/var/log/system.log
echo "****END failed login report since midnight yesterday****"
echo ""
echo ""

#Uncomment the block below to extend the reporet of unsuccessful login attempts to all logged history
echo ""
echo ""
echo "****BEGIN failed login reports for all logged history (up to midnight yesterday)***"
zgrep "Failed to authenticate" /private/var/log/system.log.*
echo "****END failed login reports for all logged history (up to midnight yesterday)****"
echo ""
echo ""
