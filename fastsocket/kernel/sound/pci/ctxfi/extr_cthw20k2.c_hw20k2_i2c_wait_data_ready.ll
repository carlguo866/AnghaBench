; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_wait_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_wait_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@I2C_IF_STATUS = common dso_local global i32 0, align 4
@DATA_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw20k2_i2c_wait_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw20k2_i2c_wait_data_ready(%struct.hw* %0) #0 {
  %2 = alloca %struct.hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %2, align 8
  store i32 4194304, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.hw*, %struct.hw** %2, align 8
  %7 = load i32, i32* @I2C_IF_STATUS, align 4
  %8 = call i32 @hw_read_20kx(%struct.hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DATA_READY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i1 [ false, %9 ], [ %17, %14 ]
  br i1 %19, label %5, label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
