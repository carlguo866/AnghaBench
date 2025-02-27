; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_seq_groups_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_seq_groups_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @ext4_mb_seq_groups_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ext4_mb_seq_groups_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @file_inode(i32 %10)
  %12 = call %struct.super_block* @PDE_DATA(i32 %11)
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call i64 @ext4_get_groups_count(%struct.super_block* %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  store i8* null, i8** %3, align 8
  br label %29

23:                                               ; preds = %16
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local %struct.super_block* @PDE_DATA(i32) #1

declare dso_local i32 @file_inode(i32) #1

declare dso_local i64 @ext4_get_groups_count(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
