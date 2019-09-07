SWIFTC=swiftc

mdef: mdef.swift
	$(SWIFTC) mdef.swift

.PHONY: clean

clean:
	rm -f mdef
