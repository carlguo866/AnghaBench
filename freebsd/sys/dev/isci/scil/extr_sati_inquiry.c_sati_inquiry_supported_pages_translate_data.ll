; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_supported_pages_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_supported_pages_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_INQUIRY_SUPPORTED_PAGES_PAGE = common dso_local global i32 0, align 4
@SCSI_INQUIRY_UNIT_SERIAL_NUM_PAGE = common dso_local global i32 0, align 4
@SCSI_INQUIRY_DEVICE_ID_PAGE = common dso_local global i32 0, align 4
@SCSI_INQUIRY_ATA_INFORMATION_PAGE = common dso_local global i32 0, align 4
@SCSI_INQUIRY_BLOCK_DEVICE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @sati_inquiry_supported_pages_translate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_inquiry_supported_pages_translate_data(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @sati_set_data_byte(i32* %5, i8* %6, i32 0, i32 0)
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @SCSI_INQUIRY_SUPPORTED_PAGES_PAGE, align 4
  %11 = call i32 @sati_set_data_byte(i32* %8, i8* %9, i32 1, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @sati_set_data_byte(i32* %12, i8* %13, i32 2, i32 0)
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @sati_set_data_byte(i32* %15, i8* %16, i32 3, i32 4)
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @SCSI_INQUIRY_SUPPORTED_PAGES_PAGE, align 4
  %21 = call i32 @sati_set_data_byte(i32* %18, i8* %19, i32 4, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @SCSI_INQUIRY_UNIT_SERIAL_NUM_PAGE, align 4
  %25 = call i32 @sati_set_data_byte(i32* %22, i8* %23, i32 5, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @SCSI_INQUIRY_DEVICE_ID_PAGE, align 4
  %29 = call i32 @sati_set_data_byte(i32* %26, i8* %27, i32 6, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @SCSI_INQUIRY_ATA_INFORMATION_PAGE, align 4
  %33 = call i32 @sati_set_data_byte(i32* %30, i8* %31, i32 7, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @SCSI_INQUIRY_BLOCK_DEVICE_PAGE, align 4
  %37 = call i32 @sati_set_data_byte(i32* %34, i8* %35, i32 8, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @sati_set_data_byte(i32* %38, i8* %39, i32 9, i32 0)
  ret void
}

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
