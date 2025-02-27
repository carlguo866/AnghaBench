; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_superio_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-it87.c_superio_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @superio_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superio_enter() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @REG, align 4
  %3 = load i32, i32* @KBUILD_MODNAME, align 4
  %4 = call i32 @request_muxed_region(i32 %2, i32 2, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %18

9:                                                ; preds = %0
  %10 = load i32, i32* @REG, align 4
  %11 = call i32 @outb(i32 135, i32 %10)
  %12 = load i32, i32* @REG, align 4
  %13 = call i32 @outb(i32 1, i32 %12)
  %14 = load i32, i32* @REG, align 4
  %15 = call i32 @outb(i32 85, i32 %14)
  %16 = load i32, i32* @REG, align 4
  %17 = call i32 @outb(i32 85, i32 %16)
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %9, %6
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @request_muxed_region(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
