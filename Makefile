.PHONY: clean
clean:
	find "$(CURDIR)" -type l -name bazel-* -ok rm -f {} \;
