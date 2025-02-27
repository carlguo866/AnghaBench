; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_restore_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_restore_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ssi_port = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SSI_SST_DIVISOR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_ssi_port*)* @ssi_restore_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_restore_divisor(%struct.omap_ssi_port* %0) #0 {
  %2 = alloca %struct.omap_ssi_port*, align 8
  store %struct.omap_ssi_port* %0, %struct.omap_ssi_port** %2, align 8
  %3 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %2, align 8
  %4 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %2, align 8
  %8 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SSI_SST_DIVISOR_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 %6, i64 %11)
  ret i32 0
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
