#!/bin/bash

api="https://arockets.ru/data"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_stores() {
	curl --request GET \
		--url "$api/vk_data.json" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_store_info() {
	# 1 - store_id: (string): <store_id>
	curl --request GET \
		--url "$api/stores/$1.json" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}
