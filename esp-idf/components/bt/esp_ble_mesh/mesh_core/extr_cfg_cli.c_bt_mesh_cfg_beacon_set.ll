; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_bt_mesh_cfg_beacon_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_bt_mesh_cfg_beacon_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_msg_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OP_BEACON_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_cfg_beacon_set(%struct.bt_mesh_msg_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.bt_mesh_msg_ctx* %0, %struct.bt_mesh_msg_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %4, align 8
  %7 = icmp ne %struct.bt_mesh_msg_ctx* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %8
  %17 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %4, align 8
  %18 = load i32, i32* @OP_BEACON_SET, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @set_state_u8(%struct.bt_mesh_msg_ctx* %17, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @set_state_u8(%struct.bt_mesh_msg_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
