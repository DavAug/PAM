# PAM

## Reproduce results

In order to make our results reproducible, we prepared a `Makefile`, which
calls Python scripts in the `results` directory. Before we can run those
Python scripts, we need to make sure that all dependencies are installed.

### 1. Install dependencies

- (optional) Create a virtual environment and activate it

```bash
python3 -m venv venv && source venv/bin/activate
```

- Install dependencies

```bash
pip install -r requirements.txt
```