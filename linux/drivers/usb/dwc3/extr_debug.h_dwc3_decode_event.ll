; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debug.h_dwc3_decode_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debug.h_dwc3_decode_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dwc3_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i32)* @dwc3_decode_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwc3_decode_event(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.dwc3_event, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = bitcast %union.dwc3_event* %10 to i32*
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 8
  %13 = bitcast %union.dwc3_event* %10 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = bitcast %union.dwc3_event* %10 to i32*
  %21 = call i8* @dwc3_gadget_event_string(i8* %18, i64 %19, i32* %20)
  store i8* %21, i8** %5, align 8
  br label %28

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = bitcast %union.dwc3_event* %10 to i32*
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @dwc3_ep_event_string(i8* %23, i64 %24, i32* %25, i32 %26)
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i8*, i8** %5, align 8
  ret i8* %29
}

declare dso_local i8* @dwc3_gadget_event_string(i8*, i64, i32*) #1

declare dso_local i8* @dwc3_ep_event_string(i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
