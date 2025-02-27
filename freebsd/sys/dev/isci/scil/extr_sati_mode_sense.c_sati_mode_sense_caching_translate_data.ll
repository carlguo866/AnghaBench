; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_caching_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_caching_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@SCSI_MODE_SENSE_PC_SHIFT = common dso_local global i64 0, align 8
@SCSI_MODE_PAGE_CACHING = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_PC_CURRENT = common dso_local global i64 0, align 8
@ATA_IDENTIFY_DEVICE_WCE_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_PAGE_CACHE_PAGE_WCE_BIT = common dso_local global i64 0, align 8
@ATA_IDENTIFY_DEVICE_RA_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_PAGE_CACHE_PAGE_DRA_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_mode_sense_caching_translate_data(%struct.TYPE_8__* %0, i8* %1, %struct.TYPE_9__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64* @sati_cb_get_cdb_address(i8* %13)
  store i64* %14, i64** %9, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = call i64 @sati_get_cdb_byte(i64* %15, i32 2)
  %17 = load i64, i64* @SCSI_MODE_SENSE_PC_SHIFT, align 8
  %18 = ashr i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @SCSI_MODE_PAGE_CACHING, align 4
  %24 = call i64 @sati_mode_sense_copy_initial_data(%struct.TYPE_8__* %19, i8* %20, i64 %21, i64 %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @SCSI_MODE_SENSE_PC_CURRENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATA_IDENTIFY_DEVICE_WCE_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 2
  %40 = call i32 @sati_get_data_byte(%struct.TYPE_8__* %36, i8* %37, i64 %39, i64* %12)
  %41 = load i64, i64* @SCSI_MODE_PAGE_CACHE_PAGE_WCE_BIT, align 8
  %42 = load i64, i64* %12, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %12, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, 2
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %44, i8* %45, i64 %47, i64 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %35, %28
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATA_IDENTIFY_DEVICE_RA_ENABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 12
  %66 = call i32 @sati_get_data_byte(%struct.TYPE_8__* %62, i8* %63, i64 %65, i64* %12)
  %67 = load i64, i64* @SCSI_MODE_PAGE_CACHE_PAGE_DRA_BIT, align 8
  %68 = load i64, i64* %12, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %12, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, 12
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %70, i8* %71, i64 %73, i64 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %61, %54
  br label %81

81:                                               ; preds = %80, %4
  %82 = load i64, i64* %11, align 8
  ret i64 %82
}

declare dso_local i64* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i64 @sati_get_cdb_byte(i64*, i32) #1

declare dso_local i64 @sati_mode_sense_copy_initial_data(%struct.TYPE_8__*, i8*, i64, i64, i32) #1

declare dso_local i32 @sati_get_data_byte(%struct.TYPE_8__*, i8*, i64, i64*) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_8__*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
