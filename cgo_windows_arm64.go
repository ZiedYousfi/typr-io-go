//go:build windows && arm64

package typrio

/*
#cgo LDFLAGS: ${SRCDIR}/lib/windows-arm64/typr_io.lib -luser32
*/
import "C"
