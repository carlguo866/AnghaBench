; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_buswidth_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_buswidth_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_host = type { %struct.mx3_camera_dev* }
%struct.mx3_camera_dev = type { i32 }

@MX3_CAMERA_DATAWIDTH_4 = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_8 = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_10 = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_host*, i32)* @buswidth_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buswidth_supported(%struct.soc_camera_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mx3_camera_dev*, align 8
  store %struct.soc_camera_host* %0, %struct.soc_camera_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %8 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %7, i32 0, i32 0
  %9 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %8, align 8
  store %struct.mx3_camera_dev* %9, %struct.mx3_camera_dev** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %51 [
    i32 4, label %11
    i32 8, label %21
    i32 10, label %31
    i32 15, label %41
  ]

11:                                               ; preds = %2
  %12 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MX3_CAMERA_DATAWIDTH_4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %6, align 8
  %23 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MX3_CAMERA_DATAWIDTH_8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %52

31:                                               ; preds = %2
  %32 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %6, align 8
  %33 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MX3_CAMERA_DATAWIDTH_10, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %2
  %42 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %6, align 8
  %43 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MX3_CAMERA_DATAWIDTH_15, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %41, %31, %21, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
