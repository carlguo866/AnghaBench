; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_int32RandomP3.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_int32RandomP3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@int32P1 = common dso_local global i64* null, align 8
@int32NumP1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @int32RandomP3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int32RandomP3() #0 {
  %1 = load i64*, i64** @int32P1, align 8
  %2 = call i64 (...) @randomUint8()
  %3 = load i64, i64* @int32NumP1, align 8
  %4 = urem i64 %2, %3
  %5 = getelementptr inbounds i64, i64* %1, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = load i64*, i64** @int32P1, align 8
  %8 = call i64 (...) @randomUint8()
  %9 = load i64, i64* @int32NumP1, align 8
  %10 = urem i64 %8, %9
  %11 = getelementptr inbounds i64, i64* %7, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %6, %12
  %14 = load i64*, i64** @int32P1, align 8
  %15 = call i64 (...) @randomUint8()
  %16 = load i64, i64* @int32NumP1, align 8
  %17 = urem i64 %15, %16
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %13, %19
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

declare dso_local i64 @randomUint8(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
