# Flask + Docker + Ngrok Practice

## Purpose
Build a simple webhook / website, practice how to use ...
1. Poetry
2. Flask
3. Docker
4. Ngrok

## Operation
### Poetry env setup
- When the project start from 0 to 1
```commandline
$ poetry init # Enter No, No, Yes
$ python3 -m venv .venv
$ poetry env use /PATH/flask_docker_ngrok_practice/venv/bin/python3
$ poetry shell 
$ poetry add xxx # Package name e.g. poetry add flask
$ poetry lock  # Lock file sync with toml
$ poetry export --without-hashes --without-urls | awk '{ print $1 }' FS=';' > requirements.txt # Optional if need export requirements.txt
```

- When clone the repo from others
```commandline
$ poetry install
$ poetry shell
```

### Coding
Coding ... ...

### Provide Ngrok Token
Input token to ngrok.yml.
The token get from https://dashboard.ngrok.com/get-started/your-authtoken
![ngrok_token.png](readme%2Fngrok_token.png)

### After all done then build up the webhook / website
```commandline
$ docker-compose build
$ docker-compose up 
```
![url.png](readme%2Furl.png)

### Happy Testing
https://fa96-118-167-218-47.ngrok-free.app
![img.png](readme%2Fimg.png)







