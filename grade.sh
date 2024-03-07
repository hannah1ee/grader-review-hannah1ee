CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [ ! -f "student-submission/ListExamples.java" ]; then
    echo "Error: ListExamples.java not found in the student submission."
    exit 1
fi

echo "No Error: ListExamples.java found in the student submission."

cp -r lib grading-area/
cp student-submission/ListExamples.java grading-area/
cp TestListExamples.java grading-area/

cd grading-area
javac -cp $CPATH TestListExamples.java ListExamples.java
if [ $? -ne 0 ]; then
    echo "Error: Compilation failed."
    exit 1
fi

echo "No Error: Compilation successful."


java -cp $CPATH org.junit.runner.JUnitCore TestListExamples  


# 2. check whether listExamples.java exists
    # use -f (condition if statement)
    # cd into it or use a relative path
    # if then else 
    # echo throughout to check logic of code

# 3. get student code, .java file within the grading tests 
    # looking at files at hand, ListExamples implementation 
    # copy students submission ListExamples.java and TestListExamples.java into grading area
    # need junit lib files to run junit: copy junit into gradingarea

# 4. compile tests and code from appropriate directory with appropriate classpath commands
    # classpath commands: jacav first (keep working directory in mind still under list0-examples-grader)

# 5. capture sucess or not through accessing the exit code ($?)
    # echo variable -> 0




# Report the grade based on JUnit output
# This may involve parsing the output to determine success/failure and providing appropriate feedback



# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
