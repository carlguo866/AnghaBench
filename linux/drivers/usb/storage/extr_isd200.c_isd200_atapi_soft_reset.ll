; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_atapi_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_atapi_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@ISD200_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Entering isd200_atapi_soft_reset\0A\00", align 1
@ACTION_SOFT_RESET = common dso_local global i32 0, align 4
@ISD200_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"   Error issuing Atapi Soft Reset\0A\00", align 1
@ISD200_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Leaving isd200_atapi_soft_reset %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @isd200_atapi_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_atapi_soft_reset(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %5 = load i32, i32* @ISD200_GOOD, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.us_data*, %struct.us_data** %2, align 8
  %7 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.us_data*, %struct.us_data** %2, align 8
  %9 = load i32, i32* @ACTION_SOFT_RESET, align 4
  %10 = call i32 @isd200_action(%struct.us_data* %8, i32 %9, i32* null, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ISD200_TRANSPORT_GOOD, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.us_data*, %struct.us_data** %2, align 8
  %16 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ISD200_ERROR, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.us_data*, %struct.us_data** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @isd200_action(%struct.us_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
