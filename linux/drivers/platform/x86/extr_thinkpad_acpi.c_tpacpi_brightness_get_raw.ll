; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_brightness_get_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_brightness_get_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@brightness_mode = common dso_local global i32 0, align 4
@TP_EC_BACKLIGHT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tpacpi_brightness_get_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpacpi_brightness_get_raw(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @brightness_mode, align 4
  switch i32 %5, label %23 [
    i32 128, label %6
    i32 130, label %9
    i32 129, label %9
  ]

6:                                                ; preds = %1
  %7 = call i32 (...) @tpacpi_brightness_nvram_get()
  %8 = load i32*, i32** %3, align 8
  store i32 %7, i32* %8, align 4
  store i32 0, i32* %2, align 4
  br label %26

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @TP_EC_BACKLIGHT, align 4
  %11 = call i32 @acpi_ec_read(i32 %10, i32* %4)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @unlikely(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** %3, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %20, %17, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @tpacpi_brightness_nvram_get(...) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
