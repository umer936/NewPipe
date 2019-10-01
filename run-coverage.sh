cd /tmp
rm -rf NewPipe
git clone https://github.com/umer936/NewPipe
rm -rf NewPipe/app/build
cd NewPipe
git remote show origin | grep "Fetch URL:" >test-execution.txt
printf "SHA: " >> test-execution.txt
git rev-parse HEAD >> test-execution.txt
( time ./gradlew test jacocoTestReport ) &> test-execution.txt
