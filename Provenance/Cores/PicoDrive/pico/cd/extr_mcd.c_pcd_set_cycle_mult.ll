; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_set_cycle_mult.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_mcd.c_pcd_set_cycle_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@mcd_m68k_cycle_mult = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcd_set_cycle_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_set_cycle_mult() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i64 107608, i64* @mcd_m68k_cycle_mult, align 8
  br label %5

4:                                                ; preds = %0
  store i64 106787, i64* @mcd_m68k_cycle_mult, align 8
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
