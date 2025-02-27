; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_prm_vcvp_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_prm_vcvp_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRM_INSTANCE_UNKNOWN = common dso_local global i64 0, align 8
@OMAP4430_PRM_PARTITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4_prm_vcvp_rmw(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i64 (...) @omap4_prmst_get_prm_dev_inst()
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @PRM_INSTANCE_UNKNOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @OMAP4430_PRM_PARTITION, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @omap4_prminst_rmw_inst_reg_bits(i32 %15, i32 %16, i32 %17, i64 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @omap4_prmst_get_prm_dev_inst(...) #1

declare dso_local i32 @omap4_prminst_rmw_inst_reg_bits(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
