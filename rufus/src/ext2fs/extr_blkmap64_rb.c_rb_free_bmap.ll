; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_free_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_free_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ext2fs_rb_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @rb_free_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_free_bmap(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ext2fs_rb_private*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ext2fs_rb_private*
  store %struct.ext2fs_rb_private* %7, %struct.ext2fs_rb_private** %3, align 8
  %8 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %3, align 8
  %9 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %8, i32 0, i32 0
  %10 = call i32 @rb_free_tree(i32* %9)
  %11 = call i32 @ext2fs_free_mem(%struct.ext2fs_rb_private** %3)
  store %struct.ext2fs_rb_private* null, %struct.ext2fs_rb_private** %3, align 8
  ret void
}

declare dso_local i32 @rb_free_tree(i32*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.ext2fs_rb_private**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
