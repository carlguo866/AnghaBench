; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_port_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"unable to lock device for reset: %d\0A\00", align 1
@US_FLIDX_DISCONNECTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No reset during disconnect\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"usb_reset_device returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_port_reset(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = getelementptr inbounds %struct.us_data, %struct.us_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.us_data*, %struct.us_data** %2, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_lock_device_for_reset(i32 %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %38

16:                                               ; preds = %1
  %17 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %18 = load %struct.us_data*, %struct.us_data** %2, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  %25 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %33

26:                                               ; preds = %16
  %27 = load %struct.us_data*, %struct.us_data** %2, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_reset_device(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.us_data*, %struct.us_data** %2, align 8
  %35 = getelementptr inbounds %struct.us_data, %struct.us_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_unlock_device(i32 %36)
  br label %38

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @usb_lock_device_for_reset(i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @usb_unlock_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
