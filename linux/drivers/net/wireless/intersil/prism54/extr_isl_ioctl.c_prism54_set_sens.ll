; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_sens.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_sens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }

@DOT11_OID_EDTHRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism54_set_sens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_sens(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32* @netdev_priv(%struct.net_device* %11)
  store i32* %12, i32** %9, align 8
  %13 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %14 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %22

18:                                               ; preds = %4
  %19 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %20 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi i32 [ 20, %17 ], [ %21, %18 ]
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @DOT11_OID_EDTHRESHOLD, align 4
  %26 = call i32 @mgt_set_request(i32* %24, i32 %25, i32 0, i32* %10)
  ret i32 %26
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mgt_set_request(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
