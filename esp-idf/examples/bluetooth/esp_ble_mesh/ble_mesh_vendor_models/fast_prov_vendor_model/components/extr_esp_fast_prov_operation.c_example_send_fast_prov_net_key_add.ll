; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_fast_prov_net_key_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_fast_prov_net_key_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NET_KEY_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @example_send_fast_prov_net_key_add(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NET_KEY_ADD, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @esp_ble_mesh_client_model_send_msg(i32* %34, %struct.TYPE_6__* %8, i32 %35, i32 16, i32* %36, i32 %39, i32 1, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %19, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @esp_ble_mesh_client_model_send_msg(i32*, %struct.TYPE_6__*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
