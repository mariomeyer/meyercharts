package:
	helm package ../charts/*
	helm repo index .

push:
	git add *
	git commit
	git push origin