cd /tmp
rm -rf NewPipe
git clone https://github.com/umer936/NewPipe
cd NewPipe
git remote show origin | grep "Fetch URL:" >test-execution.txt
echo "SHA: " >> test-execution.txt
git rev-parse HEAD >> test-execution.txt
time ./gradlew test >> test-execution.txt
