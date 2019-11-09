# Extended version in everyd8 project
# SHELL := /bin/bash 

styles_bundle   := priv/static/css/main.css

css_files       := priv/static/scss/*.scss

all: $(styles_bundle)

$(styles_bundle): $(css_files)
	mkdir -p $(dir $@)
	cat $^ | sass --stdin -s compressed --no-source-map $@

