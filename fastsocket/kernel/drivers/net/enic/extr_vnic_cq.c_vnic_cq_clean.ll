; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_cq.c_vnic_cq_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_cq.c_vnic_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_cq = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_cq_clean(%struct.vnic_cq* %0) #0 {
  %2 = alloca %struct.vnic_cq*, align 8
  store %struct.vnic_cq* %0, %struct.vnic_cq** %2, align 8
  %3 = load %struct.vnic_cq*, %struct.vnic_cq** %2, align 8
  %4 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.vnic_cq*, %struct.vnic_cq** %2, align 8
  %6 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.vnic_cq*, %struct.vnic_cq** %2, align 8
  %8 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @iowrite32(i32 0, i32* %10)
  %12 = load %struct.vnic_cq*, %struct.vnic_cq** %2, align 8
  %13 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @iowrite32(i32 0, i32* %15)
  %17 = load %struct.vnic_cq*, %struct.vnic_cq** %2, align 8
  %18 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @iowrite32(i32 1, i32* %20)
  %22 = load %struct.vnic_cq*, %struct.vnic_cq** %2, align 8
  %23 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %22, i32 0, i32 0
  %24 = call i32 @vnic_dev_clear_desc_ring(i32* %23)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @vnic_dev_clear_desc_ring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
