; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_api.c_esp_efuse_set_write_protect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_api.c_esp_efuse_set_write_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFUSE_BLK1 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_BLK1 = common dso_local global i32 0, align 4
@EFUSE_BLK2 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_BLK2 = common dso_local global i32 0, align 4
@EFUSE_BLK3 = common dso_local global i64 0, align 8
@ESP_EFUSE_WR_DIS_BLK3 = common dso_local global i32 0, align 4
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_set_write_protect(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @EFUSE_BLK1, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ESP_EFUSE_WR_DIS_BLK1, align 4
  %9 = call i32 @esp_efuse_write_field_cnt(i32 %8, i32 1)
  store i32 %9, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @EFUSE_BLK2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @ESP_EFUSE_WR_DIS_BLK2, align 4
  %16 = call i32 @esp_efuse_write_field_cnt(i32 %15, i32 1)
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @EFUSE_BLK3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ESP_EFUSE_WR_DIS_BLK3, align 4
  %23 = call i32 @esp_efuse_write_field_cnt(i32 %22, i32 1)
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %21, %14, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @esp_efuse_write_field_cnt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
