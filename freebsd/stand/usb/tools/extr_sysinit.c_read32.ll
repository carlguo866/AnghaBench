; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/tools/extr_sysinit.c_read32.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/tools/extr_sysinit.c_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@endian32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @endian32, align 4
  store i32 %5, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 15
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 15
  %14 = mul nsw i32 %13, 4
  %15 = shl i32 %11, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %2, align 4
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
