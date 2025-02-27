; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { {}* }
%struct.ifla_vf_info = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_vf_config(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ifla_vf_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifla_vf_info*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ifla_vf_info* %3, %struct.ifla_vf_info** %9, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %11 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.ib_device*, i32, i32, %struct.ifla_vf_info*)**
  %13 = load i32 (%struct.ib_device*, i32, i32, %struct.ifla_vf_info*)*, i32 (%struct.ib_device*, i32, i32, %struct.ifla_vf_info*)** %12, align 8
  %14 = icmp ne i32 (%struct.ib_device*, i32, i32, %struct.ifla_vf_info*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.ib_device*, i32, i32, %struct.ifla_vf_info*)**
  %22 = load i32 (%struct.ib_device*, i32, i32, %struct.ifla_vf_info*)*, i32 (%struct.ib_device*, i32, i32, %struct.ifla_vf_info*)** %21, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %27 = call i32 %22(%struct.ib_device* %23, i32 %24, i32 %25, %struct.ifla_vf_info* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %18, %15
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
