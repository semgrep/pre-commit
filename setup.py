# type: ignore
# Used for pre-commit since it expects a setup.py in repo root
# for actual setup.py see cli/setup.py
from setuptools import setup

setup(
    name="semgrep_pre_commit_package",
    version="3.33.3",
    install_requires=["semgrep==3.33.3"],
    packages=[],
)
