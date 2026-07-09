from setuptools import setup

setup(
    name="synthreal",
    version="0.1.0",
    description="Official Python client for the Synthreal Agent OS REST API",
    py_modules=["synthreal_sdk", "synthreal_client"],
    python_requires=">=3.8",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)
