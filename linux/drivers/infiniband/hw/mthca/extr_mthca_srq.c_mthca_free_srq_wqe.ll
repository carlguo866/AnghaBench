; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_free_srq_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_free_srq_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_srq = type { i32, i32, i32 }
%struct.mthca_next_seg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_free_srq_wqe(%struct.mthca_srq* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_srq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_next_seg*, align 8
  store %struct.mthca_srq* %0, %struct.mthca_srq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %9 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %7, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %16 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %17 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mthca_next_seg* @get_wqe(%struct.mthca_srq* %15, i32 %18)
  store %struct.mthca_next_seg* %19, %struct.mthca_next_seg** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %6, align 8
  %22 = call i32* @wqe_to_link(%struct.mthca_next_seg* %21)
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %25 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  %28 = or i32 %27, 1
  %29 = call i32 @htonl(i32 %28)
  %30 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %6, align 8
  %31 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.mthca_next_seg* @get_wqe(%struct.mthca_srq* %32, i32 %33)
  %35 = call i32* @wqe_to_link(%struct.mthca_next_seg* %34)
  store i32 -1, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %38 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mthca_srq*, %struct.mthca_srq** %3, align 8
  %40 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mthca_next_seg* @get_wqe(%struct.mthca_srq*, i32) #1

declare dso_local i32* @wqe_to_link(%struct.mthca_next_seg*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
