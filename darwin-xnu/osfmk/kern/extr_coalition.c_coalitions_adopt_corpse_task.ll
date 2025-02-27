; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalitions_adopt_corpse_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalitions_adopt_corpse_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@corpse_coalition = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"failed to adopt task %p into corpse coalition: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coalitions_adopt_corpse_task(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @corpse_coalition, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @coalitions_adopt_task(i32 %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @KERN_SUCCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i64, i64* %3, align 8
  ret i64 %15
}

declare dso_local i64 @coalitions_adopt_task(i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
