
.PHONY: merge-upstream
merge-upstream:
	#mv SD_ROOT/wz_mini/wz_mini.conf SD_ROOT/wz_mini/wz_mini.conf.merge
	git fetch upstream
	git merge upstream/master

.PHONY: remote
remote:
	-git remote add upstream https://github.com/gtxaspec/wz_mini_hacks.git
