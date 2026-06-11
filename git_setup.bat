@echo off
"C:\Program Files\Git\bin\git.exe" -C "C:\Users\dk486.joo\Desktop\plm-dashboard" config user.name "dk486-joo"
"C:\Program Files\Git\bin\git.exe" -C "C:\Users\dk486.joo\Desktop\plm-dashboard" config user.email "dk486.joo@samsung.com"
"C:\Program Files\Git\bin\git.exe" -C "C:\Users\dk486.joo\Desktop\plm-dashboard" add .
"C:\Program Files\Git\bin\git.exe" -C "C:\Users\dk486.joo\Desktop\plm-dashboard" commit -m "Initial commit: PLM CR Dashboard"
echo Done!
