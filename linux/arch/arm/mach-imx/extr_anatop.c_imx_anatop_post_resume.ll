; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_anatop.c_imx_anatop_post_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_anatop.c_imx_anatop_post_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMX_DDR_TYPE_LPDDR2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_anatop_post_resume() #0 {
  %1 = call i64 (...) @imx_mmdc_get_ddr_type()
  %2 = load i64, i64* @IMX_DDR_TYPE_LPDDR2, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @imx_anatop_enable_2p5_pulldown(i32 0)
  br label %8

6:                                                ; preds = %0
  %7 = call i32 @imx_anatop_enable_weak2p5(i32 0)
  br label %8

8:                                                ; preds = %6, %4
  %9 = call i32 @imx_anatop_enable_fet_odrive(i32 0)
  %10 = call i64 (...) @cpu_is_imx6sl()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @imx_anatop_disconnect_high_snvs(i32 0)
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @imx_mmdc_get_ddr_type(...) #1

declare dso_local i32 @imx_anatop_enable_2p5_pulldown(i32) #1

declare dso_local i32 @imx_anatop_enable_weak2p5(i32) #1

declare dso_local i32 @imx_anatop_enable_fet_odrive(i32) #1

declare dso_local i64 @cpu_is_imx6sl(...) #1

declare dso_local i32 @imx_anatop_disconnect_high_snvs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
