; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_ceph_quota_is_max_bytes_exceeded.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_ceph_quota_is_max_bytes_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@QUOTA_CHECK_MAX_BYTES_OP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_quota_is_max_bytes_exceeded(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call i64 @i_size_read(%struct.inode* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @ceph_has_realms_with_quotas(%struct.inode* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %25

18:                                               ; preds = %13
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load i32, i32* @QUOTA_CHECK_MAX_BYTES_OP, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @check_quota_exceeded(%struct.inode* %19, i32 %20, i64 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %17, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ceph_has_realms_with_quotas(%struct.inode*) #1

declare dso_local i32 @check_quota_exceeded(%struct.inode*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
