#!/usr/bin/env python
from flask import Flask, request
import socket

application = Flask(__name__)

@application.route('/')
def main():
      return "Hostname is {}".format(socket.gethostname())

if __name__ == '__main__':
    application.run()
