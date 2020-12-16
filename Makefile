.PHONY: all
all: tools.stamp
	@true

tools.stamp: config/deps.py
	$(info doing [$@])
	@pymakehelper touch_mkdir $@

.PHONY: clean
clean:
	@git clean -qffxd

.PHONY: check
check:
	$(info doing [$@])
	@git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash || exit 0
