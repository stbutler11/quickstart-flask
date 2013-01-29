#!/bin/bash

# Download virtualenv if not already here 
if [ ! -f virtualenv.py ];
then
	wget --no-check-certificate https://raw.github.com/pypa/virtualenv/master/virtualenv.py
fi

# Create a directory for the environment
mkdir env
python virtualenv.py env

# Activate the virtual environment
source env/bin/activate

# Install dependencies
pip install -r requirements.pip

# Start the app
python app.py
