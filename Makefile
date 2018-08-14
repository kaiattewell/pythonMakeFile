.PHONY= test1

zipit:
	zip files *.py
sendit:zipit
	scp files.zip jenkins@10.0.10.11:/home/jenkins
packit:sendit
	ssh jenkins@10.0.10.11 'unzip -o /home/jenkins/files.zip'
runit:packit
	ssh jenkins@10.0.10.11 'python script1.py'
