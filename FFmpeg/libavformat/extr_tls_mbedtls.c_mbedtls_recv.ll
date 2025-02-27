; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_mbedtls.c_mbedtls_recv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_mbedtls.c_mbedtls_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ffurl_read\00", align 1
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @mbedtls_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_recv(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @ffurl_read(%struct.TYPE_4__* %12, i8* %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %25, %20
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @handle_transport_error(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %31, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ffurl_read(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @handle_transport_error(%struct.TYPE_4__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
