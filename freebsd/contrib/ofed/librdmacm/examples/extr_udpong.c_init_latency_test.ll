; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_init_latency_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_init_latency_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s_lat\00", align 1
@transfer_size = common dso_local global i32 0, align 4
@transfer_count = common dso_local global i32 0, align 4
@echo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_latency_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_latency_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [5 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @size_str(i8* %4, i32 5, i32 %5)
  %7 = load i32, i32* @test_name, align 4
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %9 = call i32 @snprintf(i32 %7, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* @transfer_size, align 4
  %11 = load i32, i32* @transfer_size, align 4
  %12 = call i32 @size_to_count(i32 %11)
  %13 = sdiv i32 %12, 10
  store i32 %13, i32* @transfer_count, align 4
  store i32 1, i32* @echo, align 4
  ret void
}

declare dso_local i32 @size_str(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @size_to_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
