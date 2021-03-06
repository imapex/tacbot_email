# TAC bot - Email Daemon

# Description

This is a simple email interface to the Spark TAC bot. It will watch a 
mailbox for incoming email from foosball and use those notifications
to create a Spark room with the TAC bot and the requesting users
as participants.

# Installation

## Environment

Prerequisites

* Python 2.7+
* [setuptools package](https://pypi.python.org/pypi/setuptools)
* [Flask](http://flask.pocoo.org)
* [Requests](http://docs.python-requests.org/en/master/)

## Downloading

Option A:

If you have git installed, clone the repository

    git clone https://github.com/imapex/tacbot_email

Option B:

If you don't have git, [download a zip copy of the repository](https://github.com/imapex/ed-qos/archive/master.zip)
and extract.

Option C:

The latest build of this project is also available as a Docker image from Docker Hub

    docker pull imapex/ed-qos:latest

## Installing

To install the application, edit the sample-demoapp.json file (included) to
reflect credentials for your Cisco APIC-EM installation. Run the app_install.sh
script to install the application to your [mantl](http://mantl.io) server.

# Usage

The application provides a web interface for status reporting and configuration.
That interface will be available after the application is deployed.

Currently, the only external event source implemented is a click on that web
interface. The next release will support incoming events from event modules.
Planned event modules include integration with weather and social media.

# Development

Development requires access to Cisco's DevNet sandbox APIC-EM server, or a suitable
on-site installation. The application can be run locally rather than in a container
environment by the following:

    export FLASK_APP=app.py
    flask initdb (on first launch to initialize a local database)
    flask run


## Linting

We use flake 8 to lint our code. Please keep the repository clean by running:

    flake8

## Testing

Currently test coverage is lacking for this application.

The tests are can be run in the following ways::

    python tests.py


When adding additional code or making changes to the project, please ensure that unit tests are added to cover the
new functionality and that the entire test suite is run against the project before submitting the code.
Minimal code coverage can be verified using tools such as coverage.py.

For instance, after installing coverage.py, the toolkit can be run with the command::

    coverage run tests.py

and an HTML report of the code coverage can be generated with the command::

    coverage html


# License

Include any applicable licenses here as well as LICENSE.TXT in the root of the repository
