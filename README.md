# puppet-cookbook
puppet cookbook for debian or ubuntu.

# run
>>  cd /root/

>> git clone https://github.com/huangmingyou/puppet-cookbook.git

编辑node.pp,加入需要的类，然后执行

>>  puppet apply  --modulepath=/root/puppet-cookbook/modules /root/puppet-cookbook/manifests/site.pp


# vpn 

配置一个兼容iphone的pptp或者l2tp vpn服务器
