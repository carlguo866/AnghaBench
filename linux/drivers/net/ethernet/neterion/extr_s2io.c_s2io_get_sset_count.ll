; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s2io_nic = type { i32 }

@S2IO_TEST_LEN = common dso_local global i32 0, align 4
@XFRAME_I_STAT_LEN = common dso_local global i32 0, align 4
@XFRAME_II_STAT_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @s2io_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s2io_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %7)
  store %struct.s2io_nic* %8, %struct.s2io_nic** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %21 [
    i32 130, label %10
    i32 131, label %12
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @S2IO_TEST_LEN, align 4
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %14 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
    i32 129, label %18
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @XFRAME_I_STAT_LEN, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %12
  %19 = load i32, i32* @XFRAME_II_STAT_LEN, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %20, %18, %16, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
