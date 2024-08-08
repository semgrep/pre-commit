# type: ignore
# Used for pre-commit since it expects a setup.py in repo root
# for actual setup.py see cli/setup.py
from setuptools import setup

setup(
    name="semgrep_pre_commit_package",
    version="2.22.2",
    install_requires=["semgrep==2.22.2"],
    packages=[],
)
