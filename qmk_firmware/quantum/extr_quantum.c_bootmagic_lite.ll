; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_bootmagic_lite.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_bootmagic_lite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOOTMAGIC_LITE_ROW = common dso_local global i32 0, align 4
@BOOTMAGIC_LITE_COLUMN = common dso_local global i32 0, align 4
@DEBOUNCE = common dso_local global i32 0, align 4
@DEBOUNCING_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @bootmagic_lite() #0 {
  %1 = call i32 (...) @matrix_scan()
  %2 = call i32 @wait_ms(i32 30)
  %3 = call i32 (...) @matrix_scan()
  %4 = load i32, i32* @BOOTMAGIC_LITE_ROW, align 4
  %5 = call i32 @matrix_get_row(i32 %4)
  %6 = load i32, i32* @BOOTMAGIC_LITE_COLUMN, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 (...) @eeconfig_disable()
  %12 = call i32 (...) @bootloader_jump()
  br label %13

13:                                               ; preds = %10, %0
  ret void
}

declare dso_local i32 @matrix_scan(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @matrix_get_row(i32) #1

declare dso_local i32 @eeconfig_disable(...) #1

declare dso_local i32 @bootloader_jump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
