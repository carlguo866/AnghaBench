; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_counters_err.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_counters_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tcp_counters = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_tcp_counters_err(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_tcp_counters*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.test_tcp_counters*
  store %struct.test_tcp_counters* %7, %struct.test_tcp_counters** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @EXPECT_RET(i32 %10)
  %12 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %5, align 8
  %13 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.test_tcp_counters*, %struct.test_tcp_counters** %5, align 8
  %18 = getelementptr inbounds %struct.test_tcp_counters, %struct.test_tcp_counters* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @EXPECT_RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
