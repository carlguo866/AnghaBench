; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tfp410 = type { i64, i64 }

@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @tfp410_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tfp410*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = call %struct.tfp410* @drm_connector_to_tfp410(%struct.drm_connector* %7)
  store %struct.tfp410* %8, %struct.tfp410** %6, align 8
  %9 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %10 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %15 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @gpiod_get_value_cansleep(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @connector_status_connected, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %13
  %22 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %25 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %30 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @drm_probe_ddc(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @connector_status_connected, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @connector_status_unknown, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %34, %21, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.tfp410* @drm_connector_to_tfp410(%struct.drm_connector*) #1

declare dso_local i64 @gpiod_get_value_cansleep(i64) #1

declare dso_local i64 @drm_probe_ddc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
