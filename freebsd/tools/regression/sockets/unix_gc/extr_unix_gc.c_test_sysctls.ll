; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_test_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_test_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"%s: before inflight: %d, after inflight: %d\00", align 1
@test = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: before: %d, after: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sysctls(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @trigger_gc()
  %8 = call i32 (...) @getinflight()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @test, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = call i32 (...) @getopenfiles()
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @test, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @trigger_gc(...) #1

declare dso_local i32 @getinflight(...) #1

declare dso_local i32 @warnx(i8*, i32, i32, i32) #1

declare dso_local i32 @getopenfiles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
