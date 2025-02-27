; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mmap.c__citrus_unmap_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mmap.c__citrus_unmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_region = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_citrus_unmap_file(%struct._citrus_region* %0) #0 {
  %2 = alloca %struct._citrus_region*, align 8
  store %struct._citrus_region* %0, %struct._citrus_region** %2, align 8
  %3 = load %struct._citrus_region*, %struct._citrus_region** %2, align 8
  %4 = call i32* @_region_head(%struct._citrus_region* %3)
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct._citrus_region*, %struct._citrus_region** %2, align 8
  %8 = call i32* @_region_head(%struct._citrus_region* %7)
  %9 = load %struct._citrus_region*, %struct._citrus_region** %2, align 8
  %10 = call i32 @_region_size(%struct._citrus_region* %9)
  %11 = call i32 @munmap(i32* %8, i32 %10)
  %12 = load %struct._citrus_region*, %struct._citrus_region** %2, align 8
  %13 = call i32 @_region_init(%struct._citrus_region* %12, i32* null, i32 0)
  br label %14

14:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32* @_region_head(%struct._citrus_region*) #1

declare dso_local i32 @munmap(i32*, i32) #1

declare dso_local i32 @_region_size(%struct._citrus_region*) #1

declare dso_local i32 @_region_init(%struct._citrus_region*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
