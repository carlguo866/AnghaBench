; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_test_Skip_walkList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_test_Skip_walkList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_jobCountB = common dso_local global i64 0, align 8
@test_enumJobsB = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Skip failed: %08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Skip expected end of list: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Skip_walkList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Skip_walkList() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @test_jobCountB, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i32, i32* @test_enumJobsB, align 4
  %9 = call i64 @IEnumBackgroundCopyJobs_Skip(i32 %8, i32 1)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %7
  %17 = load i64, i64* %2, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %2, align 8
  br label %3

19:                                               ; preds = %3
  %20 = load i32, i32* @test_enumJobsB, align 4
  %21 = call i64 @IEnumBackgroundCopyJobs_Skip(i32 %20, i32 1)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @S_FALSE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  ret void
}

declare dso_local i64 @IEnumBackgroundCopyJobs_Skip(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
