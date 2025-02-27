; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_reinit_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_reinit_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.f_sourcesink*, %struct.TYPE_2__* }
%struct.f_sourcesink = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_request = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @reinit_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinit_write_data(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_sourcesink*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %10 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %13 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %19 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %18, i32 0, i32 0
  %20 = load %struct.f_sourcesink*, %struct.f_sourcesink** %19, align 8
  store %struct.f_sourcesink* %20, %struct.f_sourcesink** %8, align 8
  %21 = load %struct.f_sourcesink*, %struct.f_sourcesink** %8, align 8
  %22 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %51 [
    i32 0, label %24
    i32 1, label %32
    i32 2, label %50
  ]

24:                                               ; preds = %2
  %25 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memset(i32* %27, i32 0, i32 %30)
  br label %51

32:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %36 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = urem i32 %40, %41
  %43 = urem i32 %42, 63
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %33

49:                                               ; preds = %33
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %2, %50, %49, %24
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
