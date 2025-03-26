# type: ignore
# Used for pre-commit since it expects a setup.py in repo root
# for actual setup.py see cli/setup.py
from setuptools import setup

setup(
    name="semgrep_pre_commit_package",
    version="1.114.0",
    install_requires=["semgrep==1.114.0"],
    packages=[],
    # To be able to use this package on Windows, we need to declare
    # entry_points. See https://stackoverflow.com/a/73140567
    entry_points={
        "console_scripts": [
            "semgrep = semgrep.console_scripts.entrypoint:main",
        ]
    },
)
