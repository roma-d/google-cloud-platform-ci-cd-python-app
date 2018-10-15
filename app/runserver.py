from notejam import app
from notejam.config import ProductionConfig

app.config.from_object(ProductionConfig)

if __name__ == '__main__':
    app.run(host='0.0.0.0')
