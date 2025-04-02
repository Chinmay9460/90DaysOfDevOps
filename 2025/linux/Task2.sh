#!/bin/bash


#    Task:
#        Create /devops_workspace and a file project_notes.txt.
	mkdir devops_workspace
	cd devops_workspace
	touch project_notes.txt
#        Set permissions:
#            Owner can edit, group can read, others have no access.
		sudo chmod 640 project_notes.txt
	#	sudo chmod 240 -r devops_workspace
#        Use ls -l to verify permissions.
	sudo ls -l
