; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_bulk_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"jumpshot_bulk_read:  len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i32)* @jumpshot_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_bulk_read(%struct.us_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  store i32 %11, i32* %4, align 4
  br label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.us_data*, %struct.us_data** %5, align 8
  %16 = load %struct.us_data*, %struct.us_data** %5, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %15, i32 %18, i8* %19, i32 %20, i32* null)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %12, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
