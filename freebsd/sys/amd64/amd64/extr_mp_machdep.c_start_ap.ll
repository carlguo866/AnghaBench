; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_address = common dso_local global i32 0, align 4
@mp_naps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @boot_address, align 4
  %8 = ashr i32 %7, 12
  %9 = and i32 %8, 255
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @mp_naps, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ipi_startup(i32 %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 5000
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* @mp_naps, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %28

22:                                               ; preds = %17
  %23 = call i32 @DELAY(i32 1000)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %14

27:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ipi_startup(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
