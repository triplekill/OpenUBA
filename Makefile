dev: check run
run:
	cd core/ ; python3.7 core.py ;
check:
	cd core/ ; \
	mypy \
	anomaly.py \
	case.py \
	core.py \
	database.py \
	dataset.py \
	entity.py \
	model.py \
	process.py \
	risk.py \
	riskmanager.py \
	display.py \
	user.py \
	--ignore-missing-imports ;
ui:
	cd interface/ ; npm start ;
save_dev:
	git add * -v ; git commit -am "saved from makefile to main_dev_branch" -v ; git push origin master:main_dev_branch -v;
test:
	python3.7 -m unittest discover -s ./core -p "*_test.py" -v
start_local_elk_mac:
	brew services start logstash
	brew services start elasticsearch
	brew services start kibana
stop_local_elk_mac:
	brew services stop logstash
	brew services stop elasticsearch
	brew services stop kibana
start_elk_windows:
stop_elk_windows:
