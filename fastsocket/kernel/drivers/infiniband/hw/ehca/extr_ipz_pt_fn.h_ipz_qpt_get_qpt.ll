; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.h_ipz_qpt_get_qpt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.h_ipz_qpt_get_qpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_qpt = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ipz_qpt*)* @ipz_qpt_get_qpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ipz_qpt_get_qpt(%struct.ipz_qpt* %0) #0 {
  %2 = alloca %struct.ipz_qpt*, align 8
  store %struct.ipz_qpt* %0, %struct.ipz_qpt** %2, align 8
  %3 = load %struct.ipz_qpt*, %struct.ipz_qpt** %2, align 8
  %4 = getelementptr inbounds %struct.ipz_qpt, %struct.ipz_qpt* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
