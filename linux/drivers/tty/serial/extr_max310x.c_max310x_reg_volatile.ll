; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_reg_volatile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_reg_volatile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @max310x_reg_volatile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max310x_reg_volatile(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 31
  switch i32 %7, label %9 [
    i32 132, label %8
    i32 136, label %8
    i32 135, label %8
    i32 130, label %8
    i32 129, label %8
    i32 128, label %8
    i32 131, label %8
    i32 137, label %8
    i32 138, label %8
    i32 134, label %8
    i32 133, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %11

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
