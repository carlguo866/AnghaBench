; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-gpio.c_cx25821_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-gpio.c_cx25821_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_gpio_init(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %3 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %4 = icmp eq %struct.cx25821_dev* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 128, label %10
  ]

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %6, %10
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %13 = call i32 @cx25821_set_gpiopin_logicvalue(%struct.cx25821_dev* %12, i32 5, i32 1)
  %14 = call i32 @msleep(i32 20)
  br label %15

15:                                               ; preds = %5, %11
  ret void
}

declare dso_local i32 @cx25821_set_gpiopin_logicvalue(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
