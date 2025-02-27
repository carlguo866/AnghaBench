; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dir_block_csum_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dir_block_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.ext2_dir_entry = type { i32 }

@EXT2_FLAG_IGNORE_CSUM_ERRORS = common dso_local global i32 0, align 4
@EXT2_ET_DIR_NO_SPACE_FOR_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_dir_block_csum_set(%struct.TYPE_7__* %0, i32 %1, %struct.ext2_dir_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_dir_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_dir_entry* %2, %struct.ext2_dir_entry** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ext2fs_has_feature_metadata_csum(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %17 = call i64 @__get_dirent_tail(%struct.TYPE_7__* %15, %struct.ext2_dir_entry* %16, i32* null, i32 1)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %23 = call i32 @ext2fs_dirent_csum_set(%struct.TYPE_7__* %20, i32 %21, %struct.ext2_dir_entry* %22)
  store i32 %23, i32* %4, align 4
  br label %44

24:                                               ; preds = %14
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %27 = call i64 @__get_dx_countlimit(%struct.TYPE_7__* %25, %struct.ext2_dir_entry* %26, i32* null, i32* null, i32 1)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %33 = call i32 @ext2fs_dx_csum_set(%struct.TYPE_7__* %30, i32 %31, %struct.ext2_dir_entry* %32)
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EXT2_FLAG_IGNORE_CSUM_ERRORS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @EXT2_ET_DIR_NO_SPACE_FOR_CSUM, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %41, %29, %19, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @__get_dirent_tail(%struct.TYPE_7__*, %struct.ext2_dir_entry*, i32*, i32) #1

declare dso_local i32 @ext2fs_dirent_csum_set(%struct.TYPE_7__*, i32, %struct.ext2_dir_entry*) #1

declare dso_local i64 @__get_dx_countlimit(%struct.TYPE_7__*, %struct.ext2_dir_entry*, i32*, i32*, i32) #1

declare dso_local i32 @ext2fs_dx_csum_set(%struct.TYPE_7__*, i32, %struct.ext2_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
