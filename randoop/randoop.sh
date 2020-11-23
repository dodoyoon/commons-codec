cd ../target/classes
java -classpath ${RANDOOP_JAR}: randoop.main.Main gentests --classlist=$(git rev-parse --show-toplevel)/randoop/myclasses.txt --time-limit=60 --unchecked-exception=ERROR --checked-exception=ERROR --no-regression-tests=true --literals-file=$(git rev-parse --show-toplevel)/randoop/literalsfile.txt
javac -classpath .:$JUNITPATH ErrorTest*.java
