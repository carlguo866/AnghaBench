; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c_clamp_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c_clamp_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @clamp_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clamp_align(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = shl i32 1, %10
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = xor i32 %16, -1
  %18 = add i32 %15, %17
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @clamp(i32 %14, i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %29, 1
  %31 = shl i32 1, %30
  %32 = add i32 %28, %31
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %4
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
