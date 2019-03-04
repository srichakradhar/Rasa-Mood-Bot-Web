train-nlu:
	python3 -m rasa_nlu.train -c nlu_config.yml --data nlu.md -o models --fixed_model_name nlu --project current --verbose
train-core:
	python3 -m rasa_core.train -d domain.yml -s stories.md -o models/dialogue
run-core:
	python3 -m rasa_core.run -d models/dialogue
run-nlu-core:
	python3 -m rasa_core.run -d models/dialogue -u models/current/nlu