; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_enable_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_enable_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_regulator_enable_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_regulator_enable_delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = udiv i32 %5, 1000
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = urem i32 %7, 1000
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 20
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = mul i32 %15, 1000
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @msleep(i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp uge i32 %24, 10
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 100
  %30 = call i32 @usleep_range(i32 %27, i32 %29)
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @udelay(i32 %32)
  br label %34

34:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
