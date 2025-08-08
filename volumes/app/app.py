from flask import Flask

# Initialize the Flask application
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def hello():
    return 'Hello, World! This is a simple Python Flask app running in Docker.'

# Run the app on port 5000
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
