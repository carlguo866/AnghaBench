; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.h_qbman_result_is_FQPN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.h_qbman_result_is_FQPN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_dq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QBMAN_RESULT_MASK = common dso_local global i32 0, align 4
@QBMAN_RESULT_FQPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_dq*)* @qbman_result_is_FQPN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qbman_result_is_FQPN(%struct.dpaa2_dq* %0) #0 {
  %2 = alloca %struct.dpaa2_dq*, align 8
  store %struct.dpaa2_dq* %0, %struct.dpaa2_dq** %2, align 8
  %3 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %2, align 8
  %4 = getelementptr inbounds %struct.dpaa2_dq, %struct.dpaa2_dq* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @QBMAN_RESULT_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @QBMAN_RESULT_FQPN, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
