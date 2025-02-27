; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_update_qd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_update_qd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_quota_data = type { %struct.gfs2_quota_lvb, %struct.TYPE_4__* }
%struct.gfs2_quota_lvb = type { i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_quota = type { i32, i32, i32 }

@GFS2_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_quota_data*)* @update_qd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_qd(%struct.gfs2_sbd* %0, %struct.gfs2_quota_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_quota_data*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_quota, align 4
  %8 = alloca %struct.gfs2_quota_lvb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.gfs2_quota_data* %1, %struct.gfs2_quota_data** %5, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_inode* @GFS2_I(i32 %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %6, align 8
  %15 = call i32 @memset(%struct.gfs2_quota* %7, i32 0, i32 12)
  %16 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %17 = call i32 @qd2offset(%struct.gfs2_quota_data* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %19 = bitcast %struct.gfs2_quota* %7 to i8*
  %20 = call i32 @gfs2_internal_read(%struct.gfs2_inode* %18, i8* %19, i32* %9, i32 12)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %27 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.gfs2_quota_lvb*
  store %struct.gfs2_quota_lvb* %32, %struct.gfs2_quota_lvb** %8, align 8
  %33 = load i32, i32* @GFS2_MAGIC, align 4
  %34 = call i32 @cpu_to_be32(i32 %33)
  %35 = load %struct.gfs2_quota_lvb*, %struct.gfs2_quota_lvb** %8, align 8
  %36 = getelementptr inbounds %struct.gfs2_quota_lvb, %struct.gfs2_quota_lvb* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.gfs2_quota_lvb*, %struct.gfs2_quota_lvb** %8, align 8
  %38 = getelementptr inbounds %struct.gfs2_quota_lvb, %struct.gfs2_quota_lvb* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gfs2_quota_lvb*, %struct.gfs2_quota_lvb** %8, align 8
  %42 = getelementptr inbounds %struct.gfs2_quota_lvb, %struct.gfs2_quota_lvb* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gfs2_quota_lvb*, %struct.gfs2_quota_lvb** %8, align 8
  %46 = getelementptr inbounds %struct.gfs2_quota_lvb, %struct.gfs2_quota_lvb* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gfs2_quota_lvb*, %struct.gfs2_quota_lvb** %8, align 8
  %50 = getelementptr inbounds %struct.gfs2_quota_lvb, %struct.gfs2_quota_lvb* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %5, align 8
  %52 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %51, i32 0, i32 0
  %53 = load %struct.gfs2_quota_lvb*, %struct.gfs2_quota_lvb** %8, align 8
  %54 = bitcast %struct.gfs2_quota_lvb* %52 to i8*
  %55 = bitcast %struct.gfs2_quota_lvb* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %25, %23
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @memset(%struct.gfs2_quota*, i32, i32) #1

declare dso_local i32 @qd2offset(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_internal_read(%struct.gfs2_inode*, i8*, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
