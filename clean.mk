CLEAN := $(CLEAN) $(DIR).clean
.PHONY: $(DIR).clean
$(DIR).clean: $(CLEAN_FILES)
$(CLEAN_FILES): %.clean:
	rm -f $*
