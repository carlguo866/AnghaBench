; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_mc417_gpio_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_mc417_gpio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mc417_gpio_enable(%struct.cx23885_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %9 = call i32 @mc417_register_read(%struct.cx23885_dev* %8, i32 36896, i32* %7)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 65535
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65535
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mc417_register_write(%struct.cx23885_dev* %24, i32 36896, i32 %25)
  ret void
}

declare dso_local i32 @mc417_register_read(%struct.cx23885_dev*, i32, i32*) #1

declare dso_local i32 @mc417_register_write(%struct.cx23885_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
