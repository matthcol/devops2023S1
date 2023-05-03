#!/bin/bash
export PROJECT_NAME=movieapi_pg

function dcp() {
	docker compose -p $PROJECT_NAME "$@"
}
export dcp
