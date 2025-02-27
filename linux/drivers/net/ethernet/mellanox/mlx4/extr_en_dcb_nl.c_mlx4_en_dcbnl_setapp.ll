; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32 }
%struct.dcb_app = type { i8*, i32, i8* }

@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i32, i8*)* @mlx4_en_dcbnl_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_setapp(%struct.net_device* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx4_en_priv*, align 8
  %11 = alloca %struct.dcb_app, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %10, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %4
  %24 = call i32 @memset(%struct.dcb_app* %11, i32 0, i32 24)
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %11, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %11, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = call i32 @dcb_setapp(%struct.net_device* %31, %struct.dcb_app* %11)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.dcb_app*, i32, i32) #1

declare dso_local i32 @dcb_setapp(%struct.net_device*, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
