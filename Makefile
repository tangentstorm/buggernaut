
PORT = 8080

GEN  = ./web/gen
NODE = nodejs
COFC = coffee -c -o $(GEN)

run: node_modules compile
	@echo serving site on on http://localhost:$(PORT)/
	$(NODE) server.js

node_modules:
	npm install


compile: $(GEN)/buggernaut.js $(GEN)/buggernaut-spec.js


$(GEN)/%.js: code/%.cf
	@$(COFC) $<

$(GEN)/%.js: spec/%.cf
	@$(COFC) $<
