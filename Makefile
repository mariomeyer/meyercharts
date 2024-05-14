package:
	helm package ../charts/* --sign --keyring ~/.gnupg/pubring.gpg --key mariomeyer@gmail.com
	helm repo index .

push:
	git add -f *
	git commit -m 'new version'
	git push origin

gh-pages:
	git checkout gh-pages
	git merge master
	git push origin gh-pages
	git checkout master