; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_ns_ids_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_ns_ids_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns_ids = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns_ids*, %struct.nvme_ns_ids*)* @nvme_ns_ids_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ns_ids_equal(%struct.nvme_ns_ids* %0, %struct.nvme_ns_ids* %1) #0 {
  %3 = alloca %struct.nvme_ns_ids*, align 8
  %4 = alloca %struct.nvme_ns_ids*, align 8
  store %struct.nvme_ns_ids* %0, %struct.nvme_ns_ids** %3, align 8
  store %struct.nvme_ns_ids* %1, %struct.nvme_ns_ids** %4, align 8
  %5 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %5, i32 0, i32 2
  %7 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %7, i32 0, i32 2
  %9 = call i64 @uuid_equal(i32* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %12, i32 0, i32 1
  %14 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %14, i32 0, i32 1
  %16 = call i64 @memcmp(i32* %13, i32* %15, i32 4)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %19, i32 0, i32 0
  %21 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %21, i32 0, i32 0
  %23 = call i64 @memcmp(i32* %20, i32* %22, i32 4)
  %24 = icmp eq i64 %23, 0
  br label %25

25:                                               ; preds = %18, %11, %2
  %26 = phi i1 [ false, %11 ], [ false, %2 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i64 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
