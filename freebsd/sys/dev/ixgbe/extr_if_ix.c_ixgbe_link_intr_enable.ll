; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_link_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_link_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%struct.adapter = type { %struct.ixgbe_hw }

@IXGBE_EIMS = common dso_local global i32 0, align 4
@IXGBE_EIMS_OTHER = common dso_local global i32 0, align 4
@IXGBE_EIMS_LSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_link_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_link_intr_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @iflib_get_softc(i32 %4)
  %6 = inttoptr i64 %5 to %struct.adapter*
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.ixgbe_hw* %7, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load i32, i32* @IXGBE_EIMS, align 4
  %10 = load i32, i32* @IXGBE_EIMS_OTHER, align 4
  %11 = load i32, i32* @IXGBE_EIMS_LSC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %8, i32 %9, i32 %12)
  ret void
}

declare dso_local i64 @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
