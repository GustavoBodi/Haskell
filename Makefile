all: build/objs build/hidir
	ghc --make -o build/main main.hs -odir build/objs -hidir build/hidir
	@./build/main

clean:
	@rm -f build/main~
	@rm build/objs/*
	@rm build/hidir/*

folders:
	@mkdir -p build/objs
	@mkdir -p build/hidir
