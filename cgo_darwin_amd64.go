//go:build darwin && amd64

package typrio

/*
#cgo LDFLAGS: ${SRCDIR}/lib/macos-x86_64/libtypr_io.a -lstdc++ -framework ApplicationServices -framework Carbon -framework Foundation -framework CoreGraphics
*/
import "C"
