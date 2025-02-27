; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_receive_drain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_receive_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { i32 }

@R0 = common dso_local global i32 0, align 4
@Rx_CH_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zs_port*)* @zs_receive_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zs_receive_drain(%struct.zs_port* %0) #0 {
  %2 = alloca %struct.zs_port*, align 8
  %3 = alloca i32, align 4
  store %struct.zs_port* %0, %struct.zs_port** %2, align 8
  store i32 10000, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %6 = load i32, i32* @R0, align 4
  %7 = call i32 @read_zsreg(%struct.zs_port* %5, i32 %6)
  %8 = load i32, i32* @Rx_CH_AV, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i1 [ false, %4 ], [ %14, %11 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %19 = call i32 @read_zsdata(%struct.zs_port* %18)
  br label %4

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @read_zsreg(%struct.zs_port*, i32) #1

declare dso_local i32 @read_zsdata(%struct.zs_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
