; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.cdrom_info* }
%struct.cdrom_info = type { %struct.cdrom_device_info }
%struct.cdrom_device_info = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@EIO = common dso_local global i32 0, align 4
@GPCMD_TEST_UNIT_READY = common dso_local global i8 0, align 1
@RQF_QUIET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_check_status(%struct.TYPE_4__* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  %6 = alloca %struct.cdrom_info*, align 8
  %7 = alloca %struct.cdrom_device_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.cdrom_info*, %struct.cdrom_info** %12, align 8
  store %struct.cdrom_info* %13, %struct.cdrom_info** %6, align 8
  %14 = load i32, i32* @BLK_MAX_CDB, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @IDE_DBG_FUNC, align 4
  %19 = call i32 @ide_debug_log(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %21 = icmp ne %struct.cdrom_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %27 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %26, i32 0, i32 0
  store %struct.cdrom_device_info* %27, %struct.cdrom_device_info** %7, align 8
  %28 = load i32, i32* @BLK_MAX_CDB, align 4
  %29 = call i32 @memset(i8* %17, i32 0, i32 %28)
  %30 = load i8, i8* @GPCMD_TEST_UNIT_READY, align 1
  %31 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %30, i8* %31, align 16
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %7, align 8
  %33 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %34, 3
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 %36, i8* %37, align 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %40 = load i32, i32* @RQF_QUIET, align 4
  %41 = call i32 @ide_cd_queue_pc(%struct.TYPE_4__* %38, i8* %17, i32 0, i32* null, i32* null, %struct.scsi_sense_hdr* %39, i32 0, i32 %40)
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %25, %22
  %43 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ide_debug_log(i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(%struct.TYPE_4__*, i8*, i32, i32*, i32*, %struct.scsi_sense_hdr*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
