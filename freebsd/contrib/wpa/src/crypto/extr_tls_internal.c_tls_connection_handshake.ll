; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_internal.c_tls_connection_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_internal.c_tls_connection_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }
%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @tls_connection_handshake(i8* %0, %struct.tls_connection* %1, %struct.wpabuf* %2, %struct.wpabuf** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf**, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.wpabuf** %3, %struct.wpabuf*** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %12 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %13 = call %struct.wpabuf* @tls_connection_handshake2(i8* %9, %struct.tls_connection* %10, %struct.wpabuf* %11, %struct.wpabuf** %12, i32* null)
  ret %struct.wpabuf* %13
}

declare dso_local %struct.wpabuf* @tls_connection_handshake2(i8*, %struct.tls_connection*, %struct.wpabuf*, %struct.wpabuf**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
