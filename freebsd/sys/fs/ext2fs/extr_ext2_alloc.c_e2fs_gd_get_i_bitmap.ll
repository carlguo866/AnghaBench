; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_e2fs_gd_get_i_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_e2fs_gd_get_i_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_gd = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e2fs_gd_get_i_bitmap(%struct.ext2_gd* %0) #0 {
  %2 = alloca %struct.ext2_gd*, align 8
  store %struct.ext2_gd* %0, %struct.ext2_gd** %2, align 8
  %3 = load %struct.ext2_gd*, %struct.ext2_gd** %2, align 8
  %4 = getelementptr inbounds %struct.ext2_gd, %struct.ext2_gd* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = shl i32 %6, 32
  %8 = load %struct.ext2_gd*, %struct.ext2_gd** %2, align 8
  %9 = getelementptr inbounds %struct.ext2_gd, %struct.ext2_gd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %7, %10
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
