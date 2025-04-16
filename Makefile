install:
	uv sync

collectstatic:
	uv run python manage.py collectstatic --noinput

migrate:
	uv run python manage.py migrate

build:
	./build.sh

render-start:
	.venv/bin/python -m gunicorn task_manager.wsgi