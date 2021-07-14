cd /var/cpanel/ssl/apache_tls
# for dir in /var/cpanel/ssl/apache_tls;
# do
    
#     echo  "\nSSLING" $(dir);

#     ./acme.sh --issue --apache -d $dir --force
#     if [ $? -eq 0 ]
#     then
#       echo "\nSUCCESS" $(dir)
#       rm /var/cpanel/ssl/apache_tls/$dir/combined.cache -f
#       rm /var/cpanel/ssl/apache_tls/$dir/certificates.cache -f
#       yes | cp -rf /root/.acme.sh/$dir/fullchain.cer /var/cpanel/ssl/apache_tls/$dir/certificates 
#       cat /root/.acme.sh/$dir/$dir.key  /root/.acme.sh/$dir/fullchain.cer > /root/.acme.sh/$dir/combined
#       yes | cp -rf /root/.acme.sh/$dir/combined /var/cpanel/ssl/apache_tls/$dir/combined 
#       systemctl reload httpd

#     else
#       echo "\nFAILED " $(dir) >&2
#     fi
# done
# systemctl reload httpd
# exit 0
# 
# 

for dir in */; do
    dir=${dir%/*}
    echo $dir
    sh /root/.acme.sh/acme.sh --issue --apache -d $dir -d www.$dir  --force
    if [ $? -eq 0 ]
    then
      rm /var/cpanel/ssl/apache_tls/$dir/combined.cache -f
      rm /var/cpanel/ssl/apache_tls/$dir/certificates.cache -f
      yes | cp -rf /root/.acme.sh/$dir/fullchain.cer /var/cpanel/ssl/apache_tls/$dir/certificates 
      cat /root/.acme.sh/$dir/$dir.key  /root/.acme.sh/$dir/fullchain.cer > /root/.acme.sh/$dir/combined
      yes | cp -rf /root/.acme.sh/$dir/combined /var/cpanel/ssl/apache_tls/$dir/combined 
      echo "\nSUCCESS"
      clear
    else
      echo "\nFAILED "  >&2
    fi
done
systemctl reload httpd
exit 0

