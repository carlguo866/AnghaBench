; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_client_hello_get0_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_client_hello_get0_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SSL_client_hello_get0_session_id(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %27

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %5, align 8
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %11
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %21, %10
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
