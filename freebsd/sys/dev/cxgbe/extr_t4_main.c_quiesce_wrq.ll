; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_quiesce_wrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_quiesce_wrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_wrq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_wrq*)* @quiesce_wrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quiesce_wrq(%struct.adapter* %0, %struct.sge_wrq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_wrq*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_wrq* %1, %struct.sge_wrq** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
