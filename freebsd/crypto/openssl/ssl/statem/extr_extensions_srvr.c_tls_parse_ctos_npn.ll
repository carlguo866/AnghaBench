; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_npn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_npn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_npn(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = call i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_6__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %5
  ret i32 1
}

declare dso_local i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
