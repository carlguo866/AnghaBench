; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-mutexes.c_synchronize.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-mutexes.c_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@step = common dso_local global i32 0, align 4
@condvar = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synchronize() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @synchronize_nowait()
  %3 = load i32, i32* @step, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %9, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @step, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = call i32 @uv_cond_wait(i32* @condvar, i32* @mutex)
  br label %4

11:                                               ; preds = %4
  %12 = load i32, i32* @step, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp eq i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  ret void
}

declare dso_local i32 @synchronize_nowait(...) #1

declare dso_local i32 @uv_cond_wait(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
