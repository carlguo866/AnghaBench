; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cmd_decoder_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cmd_decoder_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, i32 }

@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Requesting decoder reset\00", align 1
@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to reset decoder: nothing attached\00", align 1
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_cmd_decoder_reset(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %4 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %5 = call i32 @pvr2_trace(i32 %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 1
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @core, align 4
  %17 = load i32, i32* @reset, align 4
  %18 = call i32 @v4l2_device_call_all(i32* %12, i64 %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = call i32 @pvr2_hdw_cx25840_vbi_hack(%struct.pvr2_hdw* %19)
  store i32 0, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %23 = call i32 @pvr2_trace(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOTTY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @pvr2_hdw_cx25840_vbi_hack(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
