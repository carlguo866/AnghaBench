; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.h_bt_mesh_aes_cmac_one.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.h_bt_mesh_aes_cmac_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_sg = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*)* @bt_mesh_aes_cmac_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_mesh_aes_cmac_one(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bt_mesh_sg, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %9, i32 0, i32 0
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %9, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @bt_mesh_aes_cmac(i32* %14, %struct.bt_mesh_sg* %9, i32 1, i32* %15)
  ret i32 %16
}

declare dso_local i32 @bt_mesh_aes_cmac(i32*, %struct.bt_mesh_sg*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
