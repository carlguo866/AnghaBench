; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FmPcdKgBuildReadSchemeActionReg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FmPcdKgBuildReadSchemeActionReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM_PCD_KG_KGAR_NUM_SHIFT = common dso_local global i32 0, align 4
@FM_KG_KGAR_GO = common dso_local global i32 0, align 4
@FM_KG_KGAR_READ = common dso_local global i32 0, align 4
@FM_KG_KGAR_SEL_SCHEME_ENTRY = common dso_local global i32 0, align 4
@DUMMY_PORT_ID = common dso_local global i32 0, align 4
@FM_KG_KGAR_SCM_WSEL_UPDATE_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPcdKgBuildReadSchemeActionReg(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = load i32, i32* @FM_PCD_KG_KGAR_NUM_SHIFT, align 4
  %6 = shl i32 %4, %5
  %7 = load i32, i32* @FM_KG_KGAR_GO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @FM_KG_KGAR_READ, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FM_KG_KGAR_SEL_SCHEME_ENTRY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DUMMY_PORT_ID, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FM_KG_KGAR_SCM_WSEL_UPDATE_CNT, align 4
  %16 = or i32 %14, %15
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
