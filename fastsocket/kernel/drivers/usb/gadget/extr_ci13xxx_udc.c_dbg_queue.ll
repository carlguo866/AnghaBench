; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_dbg_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_dbg_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32, i32 }

@DBG_DATA_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"QUEUE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.usb_request*, i32)* @dbg_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_queue(i32 %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @DBG_DATA_MSG, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %14 = icmp ne %struct.usb_request* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = trunc i64 %10 to i32
  %17 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %18 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %24 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scnprintf(i8* %12, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dbg_print(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %12)
  br label %30

30:                                               ; preds = %15, %3
  %31 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dbg_print(i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
