; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_destroy_mad_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_destroy_mad_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_qp_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_qp_info*)* @destroy_mad_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_mad_qp(%struct.ib_mad_qp_info* %0) #0 {
  %2 = alloca %struct.ib_mad_qp_info*, align 8
  store %struct.ib_mad_qp_info* %0, %struct.ib_mad_qp_info** %2, align 8
  %3 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %2, align 8
  %4 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %2, align 8
  %10 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ib_destroy_qp(i32 %11)
  %13 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %2, align 8
  %14 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kfree(i32 %15)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ib_destroy_qp(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
