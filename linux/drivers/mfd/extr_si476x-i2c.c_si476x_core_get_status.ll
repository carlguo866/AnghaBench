; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32 }

@SI476X_I2C_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*)* @si476x_core_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_get_status(%struct.si476x_core* %0) #0 {
  %2 = alloca %struct.si476x_core*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %2, align 8
  %5 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %6 = load i32, i32* @SI476X_I2C_RECV, align 4
  %7 = call i32 @si476x_core_i2c_xfer(%struct.si476x_core* %5, i32 %6, i32* %3, i32 4)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

declare dso_local i32 @si476x_core_i2c_xfer(%struct.si476x_core*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
