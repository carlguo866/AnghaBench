; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_reset_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_reset_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmidi_device = type { i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"reset config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gmidi_device*)* @gmidi_reset_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmidi_reset_config(%struct.gmidi_device* %0) #0 {
  %2 = alloca %struct.gmidi_device*, align 8
  store %struct.gmidi_device* %0, %struct.gmidi_device** %2, align 8
  %3 = load %struct.gmidi_device*, %struct.gmidi_device** %2, align 8
  %4 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.gmidi_device*, %struct.gmidi_device** %2, align 8
  %10 = call i32 @DBG(%struct.gmidi_device* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.gmidi_device*, %struct.gmidi_device** %2, align 8
  %12 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_ep_disable(i32 %13)
  %15 = load %struct.gmidi_device*, %struct.gmidi_device** %2, align 8
  %16 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_ep_disable(i32 %17)
  %19 = load %struct.gmidi_device*, %struct.gmidi_device** %2, align 8
  %20 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @DBG(%struct.gmidi_device*, i8*) #1

declare dso_local i32 @usb_ep_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
