; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_reopen_logs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_reopen_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sigusr1_cnt = common dso_local global i32 0, align 4
@logs_reopen_cnt = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@logname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"logs reopened.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reopen_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reopen_logs() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @sigusr1_cnt, align 4
  store i32 %2, i32* @logs_reopen_cnt, align 4
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @fflush(i32 %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fflush(i32 %5)
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %7, i32 0)
  store i32 %8, i32* %1, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %23

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @dup2(i32 %11, i32 0)
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @dup2(i32 %13, i32 1)
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @dup2(i32 %15, i32 2)
  %17 = load i32, i32* %1, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @close(i32 %20)
  br label %22

22:                                               ; preds = %19, %10
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i8*, i8** @logname, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i8*, i8** @logname, align 8
  %28 = load i32, i32* @O_WRONLY, align 4
  %29 = load i32, i32* @O_APPEND, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i8* %27, i32 %32, i32 416)
  store i32 %33, i32* %1, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @dup2(i32 %36, i32 1)
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @dup2(i32 %38, i32 2)
  %40 = load i32, i32* %1, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @close(i32 %43)
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %26, %23
  %47 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
