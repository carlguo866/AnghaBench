; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_off_11bg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_off_11bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_rf_off_11bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_rf_off_11bg(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %3 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %4 = call i32 @PHY_WRITE(%struct.bwi_mac* %3, i32 21, i32 43520)
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
