; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_resumed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_resumed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_resumed(i8* %0, %struct.tls_connection* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tls_connection*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %4, align 8
  %5 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %6 = icmp ne %struct.tls_connection* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %9 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @SSL_session_reused(i32 %10)
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi i32 [ %11, %7 ], [ 0, %12 ]
  ret i32 %14
}

declare dso_local i32 @SSL_session_reused(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
