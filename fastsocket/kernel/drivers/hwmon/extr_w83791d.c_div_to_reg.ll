; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_div_to_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_div_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @div_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_to_reg(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @SENSORS_LIMIT(i64 %6, i32 1, i32 128)
  %8 = ashr i32 %7, 1
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %20, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 7
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = ashr i64 %18, 1
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %10

23:                                               ; preds = %16, %10
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @SENSORS_LIMIT(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
