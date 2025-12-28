//go:build darwin && arm64

package typrio

/*
#cgo LDFLAGS: ${SRCDIR}/lib/macos-arm64/libtypr_io.a -lstdc++ -framework ApplicationServices -framework Carbon -framework Foundation -framework CoreGraphics
*/
import "C"
