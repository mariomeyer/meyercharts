package:
	helm package ../charts/*
	helm repo index .

push:
	git add *
	git commit
	git push origin

gh-pages:
	git checkout gh-pages
	git merge master
	git push origin gh-pages