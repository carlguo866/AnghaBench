; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_wait_invalid_semaphore.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_wait_invalid_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ksem_wait() didn't fail\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"ksem_wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wait_invalid_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_invalid_semaphore() #0 {
  %1 = load i32, i32* @STDERR_FILENO, align 4
  %2 = call i64 @ksem_wait(i32 %1)
  %3 = icmp sge i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @fail_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %14

6:                                                ; preds = %0
  %7 = load i64, i64* @errno, align 8
  %8 = load i64, i64* @EINVAL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %14

12:                                               ; preds = %6
  %13 = call i32 (...) @pass()
  br label %14

14:                                               ; preds = %12, %10, %4
  ret void
}

declare dso_local i64 @ksem_wait(i32) #1

declare dso_local i32 @fail_err(i8*) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
