all: install
install: install.cmd
clean: clean.cmd
test: test.pkg
bench: bench.pkg

%.cmd: %.pkg
	cd cmd && make $*

%.pkg:
	cd pkg/util && make $*
	cd pkg/exec && make $*
	cd pkg/store && make $*
	cd pkg/paxos && make $*
	cd pkg/net && make $*
	cd pkg/proto && make $*
	cd pkg/lock && make $*
	cd pkg/server && make $*
	cd pkg/web && make $*
	cd pkg/client && make $*
	cd pkg/mon && make $*
	cd pkg/test && make $*
	cd pkg/timer && make $*
	cd pkg/session && make $*
	cd pkg/member && make $*
	cd pkg/gc && make $*
	cd pkg && make $*

