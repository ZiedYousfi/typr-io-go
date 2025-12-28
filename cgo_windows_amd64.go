//go:build windows && amd64

package typrio

/*
#cgo LDFLAGS: ${SRCDIR}/lib/windows-x64/typr_io.lib -luser32
*/
import "C"
