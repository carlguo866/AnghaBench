; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.h_xfs_dir2_data_entsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.h_xfs_dir2_data_entsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xfs_dir2_data_entry_t = common dso_local global i32 0, align 4
@name = common dso_local global i32* null, align 8
@XFS_DIR2_DATA_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xfs_dir2_data_entsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_data_entsize(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @xfs_dir2_data_entry_t, align 4
  %4 = load i32*, i32** @name, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @offsetof(i32 %3, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %7, %9
  %11 = add nsw i64 %10, 4
  %12 = load i32, i32* @XFS_DIR2_DATA_ALIGN, align 4
  %13 = call i64 @roundup(i64 %11, i32 %12)
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
