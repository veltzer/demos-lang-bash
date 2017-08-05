.PHONY: all
all: tools.stamp
	@true

tools.stamp: templardefs/deps.py
	$(info doing [$@])
	@templar install_deps
	@make_helper touch-mkdir $@

.PHONY: clean
clean:
	@git clean -qffxd

.PHONY: check
check:
	$(info doing [$@])
	@git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash || exit 0
