; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c_mpr_mapping_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c_mpr_mapping_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpr_mapping_exit(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  %3 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %4 = call i32 @_mapping_flush_dpm_pages(%struct.mpr_softc* %3)
  %5 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %6 = call i32 @mpr_mapping_free_memory(%struct.mpr_softc* %5)
  ret void
}

declare dso_local i32 @_mapping_flush_dpm_pages(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_mapping_free_memory(%struct.mpr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
