; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_debug_object_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_objects_fixups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i8*, i32)*, i8*, i32)* @debug_object_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_object_fixup(i32 (i8*, i32)* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 (i8*, i32)* %0, i32 (i8*, i32)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %9 = icmp ne i32 (i8*, i32)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 %11(i8* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @debug_objects_fixups, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @debug_objects_fixups, align 4
  store i32 1, i32* %4, align 4
  br label %20

19:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
