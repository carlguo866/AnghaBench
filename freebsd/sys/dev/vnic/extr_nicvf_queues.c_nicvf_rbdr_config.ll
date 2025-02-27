; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rbdr_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rbdr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.queue_set = type { i64, %struct.rbdr* }
%struct.rbdr = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rbdr_cfg = type { i32, i32, i64, i32, i64, i64 }

@NIC_QSET_RBDR_0_1_BASE = common dso_local global i32 0, align 4
@RBDR_SIZE = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_CFG = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_DOOR = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.queue_set*, i32, i32)* @nicvf_rbdr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_rbdr_config(%struct.nicvf* %0, %struct.queue_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.queue_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rbdr*, align 8
  %10 = alloca %struct.rbdr_cfg, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.queue_set* %1, %struct.queue_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %12 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %11, i32 0, i32 1
  %13 = load %struct.rbdr*, %struct.rbdr** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %13, i64 %15
  store %struct.rbdr* %16, %struct.rbdr** %9, align 8
  %17 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %18 = load %struct.rbdr*, %struct.rbdr** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @nicvf_reclaim_rbdr(%struct.nicvf* %17, %struct.rbdr* %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %66

24:                                               ; preds = %4
  %25 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %26 = load i32, i32* @NIC_QSET_RBDR_0_1_BASE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.rbdr*, %struct.rbdr** %9, align 8
  %29 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %25, i32 %26, i32 %27, i64 %31)
  %33 = getelementptr inbounds %struct.rbdr_cfg, %struct.rbdr_cfg* %10, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.rbdr_cfg, %struct.rbdr_cfg* %10, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.rbdr_cfg, %struct.rbdr_cfg* %10, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @RBDR_SIZE, align 4
  %37 = getelementptr inbounds %struct.rbdr_cfg, %struct.rbdr_cfg* %10, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.rbdr_cfg, %struct.rbdr_cfg* %10, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.rbdr*, %struct.rbdr** %9, align 8
  %40 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 128
  %43 = getelementptr inbounds %struct.rbdr_cfg, %struct.rbdr_cfg* %10, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %45 = load i32, i32* @NIC_QSET_RBDR_0_1_CFG, align 4
  %46 = load i32, i32* %7, align 4
  %47 = bitcast %struct.rbdr_cfg* %10 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %44, i32 %45, i32 %46, i64 %48)
  %50 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %51 = load i32, i32* @NIC_QSET_RBDR_0_1_DOOR, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %54 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %50, i32 %51, i32 %52, i64 %56)
  %58 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %59 = load i32, i32* @NIC_QSET_RBDR_0_1_THRESH, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.rbdr*, %struct.rbdr** %9, align 8
  %62 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %58, i32 %59, i32 %60, i64 %64)
  br label %66

66:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @nicvf_reclaim_rbdr(%struct.nicvf*, %struct.rbdr*, i32) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
