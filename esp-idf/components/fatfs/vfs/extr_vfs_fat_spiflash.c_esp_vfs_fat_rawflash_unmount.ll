; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat_spiflash.c_esp_vfs_fat_rawflash_unmount.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat_spiflash.c_esp_vfs_fat_rawflash_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_FAT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Failed to find FATFS partition (type='data', subtype='fat', partition_label='%s'). Check the partition table.\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_vfs_fat_rawflash_unmount(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %11 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_FAT, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @esp_partition_find_first(i32 %10, i32 %11, i8* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @TAG, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ff_diskio_get_pdrv_raw(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %21
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 48, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %29, align 1
  %33 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 58, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %36 = call i32 @f_mount(i32 0, i8* %35, i32 0)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ff_diskio_unregister(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @esp_vfs_fat_unregister_path(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %28, %26, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @esp_partition_find_first(i32, i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*) #1

declare dso_local i32 @ff_diskio_get_pdrv_raw(i32*) #1

declare dso_local i32 @f_mount(i32, i8*, i32) #1

declare dso_local i32 @ff_diskio_unregister(i32) #1

declare dso_local i32 @esp_vfs_fat_unregister_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
