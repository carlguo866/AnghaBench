; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_write_medium_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_write_medium_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"asix_write_medium_mode() - mode = 0x%04x\00", align 1
@AX_CMD_WRITE_MEDIUM_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to write Medium Mode mode to 0x%04x: %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @asix_write_medium_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asix_write_medium_mode(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @devdbg(%struct.usbnet* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = load i32, i32* @AX_CMD_WRITE_MEDIUM_MODE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @asix_write_cmd(%struct.usbnet* %9, i32 %10, i32 %11, i32 0, i32 0, i32* null)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @deverr(%struct.usbnet* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @deverr(%struct.usbnet*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
