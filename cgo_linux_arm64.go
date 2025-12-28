//go:build linux && arm64

package typrio

/*
#cgo LDFLAGS: ${SRCDIR}/lib/linux-arm64/libtypr_io.a -lstdc++ -linput -ludev -lxkbcommon -lpthread
*/
import "C"
