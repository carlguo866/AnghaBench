; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_closeed_by_peer.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_closeed_by_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_close_error_code = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"good bye\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64, i8*, i64)* @test_closeed_by_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_closeed_by_peer(i32* %0, i32* %1, i32 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @QUICLY_ERROR_IS_QUIC_APPLICATION(i32 %13)
  %15 = call i32 @ok(i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @QUICLY_ERROR_GET_ERROR_CODE(i32 %16)
  store i32 %17, i32* @test_close_error_code, align 4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @UINT64_MAX, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21)
  %23 = load i64, i64* %12, align 8
  %24 = icmp eq i64 %23, 8
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25)
  %27 = load i8*, i8** %11, align 8
  %28 = call i64 @memcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30)
  ret void
}

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @QUICLY_ERROR_IS_QUIC_APPLICATION(i32) #1

declare dso_local i32 @QUICLY_ERROR_GET_ERROR_CODE(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
