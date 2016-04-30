![docker pulls](https://img.shields.io/docker/pulls/mfellner/javascript-notebook.svg) ![docker stars](https://img.shields.io/docker/stars/mfellner/javascript-notebook.svg)

# Javascript Notebook Stack

Based on the Jupyter [minimal-notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook).

Contents:

* Jupyter Notebook 4.1.x
* Conda Python 3.x
* Node 6.0.0
* [ijavascript](https://github.com/n-riesco/ijavascript)

## Usage

```
docker run -d -p 8888:8888 mfellner/javascript-notebook:latest
```

## License

[MIT](LICENSE)
