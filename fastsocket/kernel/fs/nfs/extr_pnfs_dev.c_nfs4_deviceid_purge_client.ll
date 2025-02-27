; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_deviceid_purge_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_deviceid_purge_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }

@EXCHGID4_FLAG_USE_PNFS_MDS = common dso_local global i32 0, align 4
@NFS4_DEVICE_ID_HASH_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_deviceid_purge_client(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca i64, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %4 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @EXCHGID4_FLAG_USE_PNFS_MDS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %20, %11
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @NFS4_DEVICE_ID_HASH_SIZE, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @_deviceid_purge_client(%struct.nfs_client* %17, i64 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %12

23:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @_deviceid_purge_client(%struct.nfs_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
