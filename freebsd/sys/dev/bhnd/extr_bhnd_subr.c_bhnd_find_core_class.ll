; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_find_core_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_find_core_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_desc = type { i32 }

@BHND_DEVCLASS_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_find_core_class(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_core_desc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.bhnd_core_desc* @bhnd_find_core_desc(i32 %7, i32 %8)
  store %struct.bhnd_core_desc* %9, %struct.bhnd_core_desc** %6, align 8
  %10 = icmp eq %struct.bhnd_core_desc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @BHND_DEVCLASS_OTHER, align 4
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.bhnd_core_desc*, %struct.bhnd_core_desc** %6, align 8
  %15 = getelementptr inbounds %struct.bhnd_core_desc, %struct.bhnd_core_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.bhnd_core_desc* @bhnd_find_core_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
