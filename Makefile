commit:
	@git add .
	@echo 'Enter commit msg: '
	@read msg;
	@git commit -m `echo $msg`
	@git push
