//go:build linux && amd64

package typrio

/*
#cgo LDFLAGS: ${SRCDIR}/lib/linux-x64/libtypr_io.a -lstdc++ -linput -ludev -lxkbcommon -lpthread
*/
import "C"
