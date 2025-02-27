; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_int.h_vmxnet3_comp_ring_adv_next2proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_int.h_vmxnet3_comp_ring_adv_next2proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_comp_ring = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_comp_ring*)* @vmxnet3_comp_ring_adv_next2proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_comp_ring_adv_next2proc(%struct.vmxnet3_comp_ring* %0) #0 {
  %2 = alloca %struct.vmxnet3_comp_ring*, align 8
  store %struct.vmxnet3_comp_ring* %0, %struct.vmxnet3_comp_ring** %2, align 8
  %3 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %2, align 8
  %4 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %2, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %2, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %2, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @VMXNET3_FLIP_RING_GEN(i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VMXNET3_FLIP_RING_GEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
