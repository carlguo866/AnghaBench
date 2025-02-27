; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_session_write_kbytes_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_session_write_kbytes_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@sectors = common dso_local global i32* null, align 8
@STAT_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_sb_info*, i8*)* @session_write_kbytes_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_write_kbytes_show(%struct.ext4_sb_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_sb_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.super_block*, align 8
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @sectors, align 8
  %31 = load i64, i64* @STAT_WRITE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @part_stat_read(i32 %29, i32 %33)
  %35 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %36 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = ashr i32 %38, 1
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %22, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @part_stat_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
