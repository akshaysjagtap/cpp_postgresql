commit:
	@git add .
	@echo -n 'Enter commit msg: '
	@read msg;
	@git commit -m `echo $msg`
	@git push
