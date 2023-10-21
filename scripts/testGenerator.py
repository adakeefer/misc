#basic test case generator
#useful for eecs projects - adapt test case output however needed
import random

for i in range(9):
	testFile = open("myTest%d.txt" % i, "w+")
	for j in range(20):
		testFile.write("%d\n" % random.randint(-9, 9))
	testFile.close()