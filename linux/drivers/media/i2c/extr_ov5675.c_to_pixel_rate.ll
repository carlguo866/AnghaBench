; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_to_pixel_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_to_pixel_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@link_freq_menu_items = common dso_local global i32* null, align 8
@OV5675_DATA_LANES = common dso_local global i32 0, align 4
@OV5675_RGB_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @to_pixel_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_pixel_rate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32*, i32** @link_freq_menu_items, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 2
  %9 = load i32, i32* @OV5675_DATA_LANES, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @OV5675_RGB_DEPTH, align 4
  %13 = call i32 @do_div(i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
