[Source: Tobias Günther from Tower](https://www.youtube.com/watch?v=Uszj_k0DGsg)

# Common
	- git status				view every changed files
	- git diff /path/to/files		to view the changes/hunks

# Should only add changes that happened to the same "feature"
	- git add /path/to/files		to add every changes from files
	- git add -p /path/to/files		to decide which `hunks` to add

# Commit msg
    - git commit
	```
		head:	concise summary
		{blank line}    # git will understand it's a seperator
		body:what changes, why, special notes?
	```
    - git commit -m "Your message"

# Branch convention
    - git push --set-upstream origin {new branch}
		Agree on a branching workflow within Your Team
		helps avoid mistakes & collisions
		depends on team size, project, how they're released
		helps new member to be onboard easier
	- Example:
		- few branches
			relatively small commits
			high/closely testing, communicating
		- different types of branches: fulfill different jobs
		- mixed between the two above
    - Types of branches
		- Long-running
			exist through the complete lifetime of the project
			usually "main" or "master", considered as stable code
			others can be "stages" in the dev life cycle
			!no direct commit to these, only integrate in or merge
		- Short-lived
			created for certain purposes: feature, test, bug fixes
			will be deleted after integrations (merge/rebase)
	- Branching strategies
		- GitHub Flow
			- very simple, lean
			- only one long-running "main"
			- short-lived: features, misc-typed
		- GitFlow
			- more structured, more rules
			- long-running: "main" + "develop"
			- short-lived: features, releases, hotfixes

# Pull requests
	- communicating about and reviewing code before merging
	- contributing to Other's repos, "fork" a repo / make changes to it and suggest the changes for OP to include in the original

# Merge conflicts
	- happen when merging from different sources, that have differences in the same code hunk(s) - contradictory changes
    - "Unmerged paths" warning from `git status`
		- git merge --abort			to undo a conflict and start over
		- git rebase --abort		basically delete your "local" changes
	- solve conflict = clean up the file, choose/edit conflict hunks

# Merge vs. Rebase

## Merge 2 branches together
- fast-forward
	when the branches have same history, past commits
	only one is having more/newer commits than the other
	very simple, Git can automate this
	- Process:
		- retain the "older" branch
		- put all the newer commits to the "older" branch
	- End result: 1 merged branch
- more realistic:
	- both branches have some new, different commits
	- this will require a personel to sort it out
	- Process: 
		- ??? depends on the complexity of branches
	- End result: a new merged, common `node` of 2 branches
## Rebase
- git rebase {branch to rebase}: for a more 1-lined look of the Git branch
- Process: rebase B into A
	- remove all A's commits that came after the common node
	- apply all of B's new commits to the branch
	- add back/rebase the removed A's commits to the branch
- !effectively change some commits' parent commit/base
- **!!Careful: do NOT Rebase pushed/shared commits**
	- since others have based on the `old` structure
	- when you rebase, the commits' parent changed
	- and this will mess up others' work
- Use Rebase before merging to the shared branch

# .gitignore
- format:
	- path_to_dir/
	- file_name, \*.extension
- To delete ignored files from repo:
```
	git rm -rf --cached .
	git add .
	git push
```

# git lfs: Git Large File Storage
```
	git lfs track "{file_pattern}"
	git add .gitattribute
```

# pull vs fetch
- fetch will check for new changes
- pull will fetch then merge changes
