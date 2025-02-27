; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_open_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_open_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@GPIO_INVALID_HANDLE = common dso_local global i32 0, align 4
@GPIOMAXPIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_open_device(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @GPIO_INVALID_HANDLE, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GPIOMAXPIN, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, i32* %5)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* @errno, align 4
  %24 = load i32, i32* @GPIO_INVALID_HANDLE, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %19, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
