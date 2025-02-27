; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_esp_image_verify_bootloader_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_esp_image_verify_bootloader_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_PARTITION_TABLE_OFFSET = common dso_local global i64 0, align 8
@ESP_BOOTLOADER_OFFSET = common dso_local global i64 0, align 8
@ESP_IMAGE_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_image_verify_bootloader_data(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %8, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %11 = load i64, i64* @ESP_PARTITION_TABLE_OFFSET, align 8
  %12 = load i64, i64* @ESP_BOOTLOADER_OFFSET, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, i64* %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %15 = load i64, i64* @ESP_BOOTLOADER_OFFSET, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i32, i32* @ESP_IMAGE_VERIFY, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @esp_image_verify(i32 %16, %struct.TYPE_3__* %4, i32* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @esp_image_verify(i32, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
