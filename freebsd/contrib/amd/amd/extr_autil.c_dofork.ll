; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_dofork.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_dofork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foreground = common dso_local global i64 0, align 8
@NumChildren = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dofork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dofork() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i32 (...) @fork()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 @sleep(i32 1)
  br label %2

8:                                                ; preds = %2
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (...) @am_set_mypid()
  store i64 0, i64* @foreground, align 8
  br label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @NumChildren, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @NumChildren, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @am_set_mypid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
