; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_bus_machdep.c_bs_le_wr_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_bus_machdep.c_bs_le_wr_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i64)* @bs_le_wr_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bs_le_wr_2(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32* @__ppc_ba(i32 %10, i32 %11)
  store i32* %12, i32** %9, align 8
  br label %13

13:                                               ; preds = %17, %4
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %8, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %9, align 8
  %20 = ptrtoint i32* %18 to i32
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %21, align 4
  %24 = call i32 @out16rb(i32 %20, i32 %23)
  br label %13

25:                                               ; preds = %13
  %26 = call i32 (...) @powerpc_iomb()
  ret void
}

declare dso_local i32* @__ppc_ba(i32, i32) #1

declare dso_local i32 @out16rb(i32, i32) #1

declare dso_local i32 @powerpc_iomb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
