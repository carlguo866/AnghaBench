; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_freecom.c_freecom_readdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_freecom.c_freecom_readdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.us_data = type { i64 }
%struct.freecom_xfer_wrap = type { i32, i32, i32, i64 }

@FCM_PACKET_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Read data Freecom! (c=%d)\0A\00", align 1
@FCM_PACKET_LENGTH = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Freecom readdata transport error\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Start of read\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"freecom_readdata done!\0A\00", align 1
@USB_STOR_XFER_SHORT = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*, i32, i32, i32)* @freecom_readdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freecom_readdata(%struct.scsi_cmnd* %0, %struct.us_data* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.us_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.freecom_xfer_wrap*, align 8
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %7, align 8
  store %struct.us_data* %1, %struct.us_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.us_data*, %struct.us_data** %8, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.freecom_xfer_wrap*
  store %struct.freecom_xfer_wrap* %17, %struct.freecom_xfer_wrap** %12, align 8
  %18 = load i32, i32* @FCM_PACKET_INPUT, align 4
  %19 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %20 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %22 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %26 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %28 = getelementptr inbounds %struct.freecom_xfer_wrap, %struct.freecom_xfer_wrap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.us_data*, %struct.us_data** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.freecom_xfer_wrap*, %struct.freecom_xfer_wrap** %12, align 8
  %36 = load i32, i32* @FCM_PACKET_LENGTH, align 4
  %37 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %33, i32 %34, %struct.freecom_xfer_wrap* %35, i32 %36, i32* null)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %43, i32* %6, align 4
  br label %58

44:                                               ; preds = %5
  %45 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.us_data*, %struct.us_data** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %49 = call i32 @usb_stor_bulk_srb(%struct.us_data* %46, i32 %47, %struct.scsi_cmnd* %48)
  store i32 %49, i32* %13, align 4
  %50 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @USB_STOR_XFER_SHORT, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54, %41
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, %struct.freecom_xfer_wrap*, i32, i32*) #1

declare dso_local i32 @usb_stor_bulk_srb(%struct.us_data*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
