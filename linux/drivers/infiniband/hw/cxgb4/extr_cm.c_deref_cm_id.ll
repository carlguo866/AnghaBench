; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_deref_cm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_deref_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep_common = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@CM_ID_DEREFED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep_common*)* @deref_cm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deref_cm_id(%struct.c4iw_ep_common* %0) #0 {
  %2 = alloca %struct.c4iw_ep_common*, align 8
  store %struct.c4iw_ep_common* %0, %struct.c4iw_ep_common** %2, align 8
  %3 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %2, align 8
  %4 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %6, align 8
  %8 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %2, align 8
  %9 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 %7(%struct.TYPE_2__* %10)
  %12 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %2, align 8
  %13 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %12, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %13, align 8
  %14 = load i32, i32* @CM_ID_DEREFED, align 4
  %15 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %2, align 8
  %16 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
