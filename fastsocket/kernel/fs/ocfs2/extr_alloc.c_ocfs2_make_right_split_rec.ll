; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_make_right_split_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_make_right_split_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ocfs2_extent_rec*, i64, %struct.ocfs2_extent_rec*)* @ocfs2_make_right_split_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_make_right_split_rec(%struct.super_block* %0, %struct.ocfs2_extent_rec* %1, i64 %2, %struct.ocfs2_extent_rec* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ocfs2_extent_rec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %8, align 8
  %11 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  %20 = add nsw i64 %15, %19
  store i64 %20, i64* %10, align 8
  %21 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %22 = call i32 @memset(%struct.ocfs2_extent_rec* %21, i32 0, i32 16)
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @cpu_to_le32(i64 %23)
  %25 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  %30 = call i32 @cpu_to_le16(i64 %29)
  %31 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %39 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %38, i32 0, i32 1
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %40, i64 %43)
  %45 = call i32 @le64_add_cpu(i32* %39, i32 %44)
  %46 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %47 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
