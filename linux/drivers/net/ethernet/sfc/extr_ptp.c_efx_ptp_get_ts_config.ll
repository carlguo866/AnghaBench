; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_get_ts_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_get_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ptp_get_ts_config(%struct.efx_nic* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ifreq*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @copy_to_user(i32 %16, i32* %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  br label %27

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @copy_to_user(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
