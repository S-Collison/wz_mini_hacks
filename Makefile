
.PHONY: merge-upstream
merge-upstream:
	git fetch upstream
	git merge upstream/master

.PHONY: remote
remote:
	-git remote add upstream https://github.com/gtxaspec/wz_mini_hacks.git
