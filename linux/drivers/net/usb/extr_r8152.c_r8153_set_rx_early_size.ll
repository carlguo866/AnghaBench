; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_set_rx_early_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_set_rx_early_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_RX_EARLY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153_set_rx_early_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_set_rx_early_size(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %4 = load %struct.r8152*, %struct.r8152** %2, align 8
  %5 = getelementptr inbounds %struct.r8152, %struct.r8152* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.r8152*, %struct.r8152** %2, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rx_reserved_size(i32 %11)
  %13 = sub nsw i32 %6, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.r8152*, %struct.r8152** %2, align 8
  %15 = getelementptr inbounds %struct.r8152, %struct.r8152* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %31 [
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %24
    i32 128, label %24
  ]

17:                                               ; preds = %1, %1, %1, %1
  %18 = load %struct.r8152*, %struct.r8152** %2, align 8
  %19 = load i32, i32* @MCU_TYPE_USB, align 4
  %20 = load i32, i32* @USB_RX_EARLY_SIZE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 %21, 4
  %23 = call i32 @ocp_write_word(%struct.r8152* %18, i32 %19, i32 %20, i32 %22)
  br label %33

24:                                               ; preds = %1, %1
  %25 = load %struct.r8152*, %struct.r8152** %2, align 8
  %26 = load i32, i32* @MCU_TYPE_USB, align 4
  %27 = load i32, i32* @USB_RX_EARLY_SIZE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 8
  %30 = call i32 @ocp_write_word(%struct.r8152* %25, i32 %26, i32 %27, i32 %29)
  br label %33

31:                                               ; preds = %1
  %32 = call i32 @WARN_ON_ONCE(i32 1)
  br label %33

33:                                               ; preds = %31, %24, %17
  ret void
}

declare dso_local i32 @rx_reserved_size(i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
