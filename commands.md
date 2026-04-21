# 📂 File & Directory
pwd
ls -l
cd folder
mkdir test
rm -rf folder

# 📄 File operations
touch file.txt
cp file.txt backup.txt
mv file.txt new.txt
cat file.txt

# 🔍 Search
find . -name file.txt
grep "text" file.txt

# 👤 User management
whoami
id
sudo useradd devops
sudo passwd devops

# 🔐 Permissions
chmod 755 file.sh
chown user:user file.sh

# ⚙️ Process
ps aux
top
kill -9 <pid>

# 🌐 Networking
ping google.com
curl google.com
netstat -tulnp

# 📦 Package
sudo apt update
sudo apt install nginx