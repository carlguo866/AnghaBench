; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_deprecated_find_dummy_frame_regcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_deprecated_find_dummy_frame_regcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.dummy_frame = type { %struct.regcache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regcache* @deprecated_find_dummy_frame_regcache(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dummy_frame*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.dummy_frame* @find_dummy_frame(i32 %7, i32 %8)
  store %struct.dummy_frame* %9, %struct.dummy_frame** %6, align 8
  %10 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %11 = icmp ne %struct.dummy_frame* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %14 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %13, i32 0, i32 0
  %15 = load %struct.regcache*, %struct.regcache** %14, align 8
  store %struct.regcache* %15, %struct.regcache** %3, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.regcache* null, %struct.regcache** %3, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.regcache*, %struct.regcache** %3, align 8
  ret %struct.regcache* %18
}

declare dso_local %struct.dummy_frame* @find_dummy_frame(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
