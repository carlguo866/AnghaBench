; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_aes_cmac.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_aes_cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_sg = type { i32, i32 }
%struct.tc_aes_key_sched_struct = type { i32 }
%struct.tc_cmac_struct = type { i32 }

@TC_CRYPTO_FAIL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_aes_cmac(i32* %0, %struct.bt_mesh_sg* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bt_mesh_sg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tc_aes_key_sched_struct, align 4
  %11 = alloca %struct.tc_cmac_struct, align 4
  store i32* %0, i32** %6, align 8
  store %struct.bt_mesh_sg* %1, %struct.bt_mesh_sg** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @tc_cmac_setup(%struct.tc_cmac_struct* %11, i32* %12, %struct.tc_aes_key_sched_struct* %10)
  %14 = load i64, i64* @TC_CRYPTO_FAIL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %51

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.bt_mesh_sg*, %struct.bt_mesh_sg** %7, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bt_mesh_sg*, %struct.bt_mesh_sg** %7, align 8
  %28 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @tc_cmac_update(%struct.tc_cmac_struct* %11, i32 %26, i32 %29)
  %31 = load i64, i64* @TC_CRYPTO_FAIL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %51

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %8, align 8
  %40 = load %struct.bt_mesh_sg*, %struct.bt_mesh_sg** %7, align 8
  %41 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %40, i32 1
  store %struct.bt_mesh_sg* %41, %struct.bt_mesh_sg** %7, align 8
  br label %20

42:                                               ; preds = %20
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @tc_cmac_final(i32* %43, %struct.tc_cmac_struct* %11)
  %45 = load i64, i64* @TC_CRYPTO_FAIL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47, %33, %16
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @tc_cmac_setup(%struct.tc_cmac_struct*, i32*, %struct.tc_aes_key_sched_struct*) #1

declare dso_local i64 @tc_cmac_update(%struct.tc_cmac_struct*, i32, i32) #1

declare dso_local i64 @tc_cmac_final(i32*, %struct.tc_cmac_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
