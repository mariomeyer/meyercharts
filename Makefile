package:
	helm package ../charts/*

push:
	git add *
	git commit
	git push origin