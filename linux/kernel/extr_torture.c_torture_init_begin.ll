; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_init_begin.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_init_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fullstop_mutex = common dso_local global i32 0, align 4
@torture_type = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"torture_init_begin: Refusing %s init: %s running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"torture_init_begin: One torture test at a time!\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@FULLSTOP_DONTSTOP = common dso_local global i32 0, align 4
@fullstop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @torture_init_begin(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @fullstop_mutex)
  %7 = load i8*, i8** @torture_type, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** @torture_type, align 8
  %12 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @mutex_unlock(i32* @fullstop_mutex)
  store i32 0, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** @torture_type, align 8
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* @verbose, align 4
  %18 = load i32, i32* @FULLSTOP_DONTSTOP, align 4
  store i32 %18, i32* @fullstop, align 4
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
