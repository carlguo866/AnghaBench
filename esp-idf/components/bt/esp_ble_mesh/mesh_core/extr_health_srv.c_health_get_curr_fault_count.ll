; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_health_srv.c_health_get_curr_fault_count.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_health_srv.c_health_get_curr_fault_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { %struct.bt_mesh_health_srv* }
%struct.bt_mesh_health_srv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@HEALTH_NO_FAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bt_mesh_model*)* @health_get_curr_fault_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @health_get_curr_fault_count(%struct.bt_mesh_model* %0) #0 {
  %2 = alloca %struct.bt_mesh_model*, align 8
  %3 = alloca %struct.bt_mesh_health_srv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %2, align 8
  %6 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %2, align 8
  %7 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %6, i32 0, i32 0
  %8 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %7, align 8
  store %struct.bt_mesh_health_srv* %8, %struct.bt_mesh_health_srv** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %3, align 8
  %12 = getelementptr inbounds %struct.bt_mesh_health_srv, %struct.bt_mesh_health_srv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = call i64 @ARRAY_SIZE(i64* %14)
  %16 = icmp ult i64 %10, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %9
  %18 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %3, align 8
  %19 = getelementptr inbounds %struct.bt_mesh_health_srv, %struct.bt_mesh_health_srv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HEALTH_NO_FAULT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i64, i64* %4, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %27, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %9

34:                                               ; preds = %9
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
