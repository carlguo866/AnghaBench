; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_eswitch_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_eswitch_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.lio_devlink_priv = type { %struct.octeon_device* }
%struct.octeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LIQUIDIO_SWITCHDEV_CAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)* @liquidio_eswitch_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_eswitch_mode_set(%struct.devlink* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.lio_devlink_priv*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.devlink*, %struct.devlink** %5, align 8
  %12 = call %struct.lio_devlink_priv* @devlink_priv(%struct.devlink* %11)
  store %struct.lio_devlink_priv* %12, %struct.lio_devlink_priv** %8, align 8
  %13 = load %struct.lio_devlink_priv*, %struct.lio_devlink_priv** %8, align 8
  %14 = getelementptr inbounds %struct.lio_devlink_priv, %struct.lio_devlink_priv* %13, i32 0, i32 0
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  store %struct.octeon_device* %15, %struct.octeon_device** %9, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LIQUIDIO_SWITCHDEV_CAP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %52

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %47 [
    i32 128, label %35
    i32 129, label %41
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %40 = call i32 @lio_vf_rep_create(%struct.octeon_device* %39)
  store i32 %40, i32* %10, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %43 = call i32 @lio_vf_rep_destroy(%struct.octeon_device* %42)
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %41, %35
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %32, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.lio_devlink_priv* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @lio_vf_rep_create(%struct.octeon_device*) #1

declare dso_local i32 @lio_vf_rep_destroy(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
