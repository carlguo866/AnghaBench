; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_reset_hpc3_and_seeq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_reset_hpc3_and_seeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpc3_ethregs = type { i64, i64 }
%struct.sgiseeq_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpc3_ethregs*, %struct.sgiseeq_regs*)* @reset_hpc3_and_seeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_hpc3_and_seeq(%struct.hpc3_ethregs* %0, %struct.sgiseeq_regs* %1) #0 {
  %3 = alloca %struct.hpc3_ethregs*, align 8
  %4 = alloca %struct.sgiseeq_regs*, align 8
  store %struct.hpc3_ethregs* %0, %struct.hpc3_ethregs** %3, align 8
  store %struct.sgiseeq_regs* %1, %struct.sgiseeq_regs** %4, align 8
  %5 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %3, align 8
  %6 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %3, align 8
  %8 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %3, align 8
  %10 = call i32 @hpc3_eth_reset(%struct.hpc3_ethregs* %9)
  ret void
}

declare dso_local i32 @hpc3_eth_reset(%struct.hpc3_ethregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
