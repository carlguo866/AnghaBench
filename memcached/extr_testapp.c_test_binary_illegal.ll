; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_illegal.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_illegal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [1020 x i8] }

@PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_binary_illegal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_illegal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 4
  %3 = alloca i64, align 8
  store i32 37, i32* %1, align 4
  br label %4

4:                                                ; preds = %7, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = bitcast %union.anon* %2 to [1024 x i8]*
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @raw_command(i8* %9, i32 1024, i32 %10, i32* null, i32 0, i32* null, i32 0)
  store i64 %11, i64* %3, align 8
  %12 = bitcast %union.anon* %2 to [1024 x i8]*
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @safe_send(i8* %13, i64 %14, i32 0)
  %16 = bitcast %union.anon* %2 to [1024 x i8]*
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %18 = call i32 @safe_recv_packet(i8* %17, i32 1024)
  %19 = bitcast %union.anon* %2 to i32*
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, align 4
  %22 = call i32 @validate_response_header(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %4

25:                                               ; preds = %4
  %26 = load i32, i32* @TEST_PASS, align 4
  ret i32 %26
}

declare dso_local i64 @raw_command(i8*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @safe_recv_packet(i8*, i32) #1

declare dso_local i32 @validate_response_header(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
