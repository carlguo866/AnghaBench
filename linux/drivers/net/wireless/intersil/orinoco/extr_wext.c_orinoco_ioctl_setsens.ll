; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_setsens.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_setsens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32 }
%struct.orinoco_private = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @orinoco_ioctl_setsens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_setsens(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %13)
  store %struct.orinoco_private* %14, %struct.orinoco_private** %10, align 8
  %15 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %16 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %19 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %49

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %28
  %35 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %36 = call i64 @orinoco_lock(%struct.orinoco_private* %35, i64* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %49

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %44 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %46 = call i32 @orinoco_unlock(%struct.orinoco_private* %45, i64* %12)
  %47 = load i32, i32* @EINPROGRESS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %38, %31, %22
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
