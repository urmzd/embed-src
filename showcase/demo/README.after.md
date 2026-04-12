# My Project

## Configuration

<!-- fsrc src="config.yml" fence="auto" -->
```yaml
server:
  host: localhost
  port: 8080

database:
  url: postgres://localhost:5432/myapp
  pool_size: 10

logging:
  level: info
  format: json
```
<!-- /fsrc -->

## API Server

<!-- fsrc src="api.py" fence="auto" -->
```python
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/health")
def health():
    return jsonify(status="ok")

@app.route("/api/users")
def list_users():
    return jsonify(users=[])

if __name__ == "__main__":
    app.run(port=8080)
```
<!-- /fsrc -->
