#!/bin/sh
# Note: This script requires mkpasswd from package whois

# Yescrypt
echo "12345" | mkpasswd --method=yescrypt --rounds=2 --stdin | awk '{print "user_yescrypt:"$1}'

# Gost-yescrypt
echo "password" | mkpasswd --method=gost-yescrypt --rounds=2 --stdin | awk '{print "user_gost-yescrypt:"$1}'

# SHA-512
echo "Debian" | mkpasswd --method=sha512crypt --salt=JJKKLLMM --stdin | awk '{print "user_sha-512:"$1}'

# SHA-256
echo "Debian" | mkpasswd --method=sha256crypt --salt=IIJJKKLL --stdin | awk '{print "user_sha-256:"$1}'

# SunMD5
echo "Debian" | mkpasswd --method=sunmd5 --salt=AABBCCDD --rounds=2 --stdin  | awk '{print "user_sunmd5:"$1}'

# MD5
echo "Debian" | mkpasswd --method=md5crypt --salt=EEFFGGHH --rounds=2 --stdin | awk '{print "user_md5:"$1}'

# DESCrypt
echo "Debian" | mkpasswd --method=descrypt --salt=AA --rounds=2 --stdin  | awk '{print "user_descrypt:"$1}'

# NT
echo "Debian" | mkpasswd --method=nt --stdin  | awk '{print "user_nt:"$1}'

# BSDIcrypt
echo "Debian" | mkpasswd --method=bsdicrypt  --stdin  | awk '{print "user_bsdicrypt:"$1}'
