; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rx51.c_ir_rx51_set_tx_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rx51.c_ir_rx51_set_tx_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ir_rx51* }
%struct.ir_rx51 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @ir_rx51_set_tx_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rx51_set_tx_carrier(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ir_rx51*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 0
  %9 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  store %struct.ir_rx51* %9, %struct.ir_rx51** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 500000
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 20000
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ir_rx51*, %struct.ir_rx51** %6, align 8
  %21 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
