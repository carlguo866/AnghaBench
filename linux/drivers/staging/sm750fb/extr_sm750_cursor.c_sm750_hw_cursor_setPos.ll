; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_cursor.c_sm750_hw_cursor_setPos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_cursor.c_sm750_hw_cursor_setPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynx_cursor = type { i32 }

@HWC_LOCATION_Y_SHIFT = common dso_local global i32 0, align 4
@HWC_LOCATION_Y_MASK = common dso_local global i32 0, align 4
@HWC_LOCATION_X_MASK = common dso_local global i32 0, align 4
@HWC_LOCATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm750_hw_cursor_setPos(%struct.lynx_cursor* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lynx_cursor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lynx_cursor* %0, %struct.lynx_cursor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @HWC_LOCATION_Y_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* @HWC_LOCATION_Y_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HWC_LOCATION_X_MASK, align 4
  %15 = and i32 %13, %14
  %16 = or i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @HWC_LOCATION, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @poke32(i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
