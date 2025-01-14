; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pxa910.h_pxa910_add_uart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pxa910.h_pxa910_add_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_device_desc = type { i32 }

@pxa910_device_uart1 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@pxa910_device_uart2 = common dso_local global %struct.pxa_device_desc zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pxa910_add_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa910_add_uart(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa_device_desc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pxa_device_desc* null, %struct.pxa_device_desc** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %8 [
    i32 1, label %6
    i32 2, label %7
  ]

6:                                                ; preds = %1
  store %struct.pxa_device_desc* @pxa910_device_uart1, %struct.pxa_device_desc** %4, align 8
  br label %8

7:                                                ; preds = %1
  store %struct.pxa_device_desc* @pxa910_device_uart2, %struct.pxa_device_desc** %4, align 8
  br label %8

8:                                                ; preds = %1, %7, %6
  %9 = load %struct.pxa_device_desc*, %struct.pxa_device_desc** %4, align 8
  %10 = icmp eq %struct.pxa_device_desc* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %8
  %15 = load %struct.pxa_device_desc*, %struct.pxa_device_desc** %4, align 8
  %16 = call i32 @pxa_register_device(%struct.pxa_device_desc* %15, i32* null, i32 0)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @pxa_register_device(%struct.pxa_device_desc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
