; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_test_Reset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_jobs.c_test_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_enumJobsB = common dso_local global i32 0, align 4
@test_jobCountB = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Skip failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Reset failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Reset() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @test_enumJobsB, align 4
  %3 = load i32, i32* @test_jobCountB, align 4
  %4 = call i64 @IEnumBackgroundCopyJobs_Skip(i32 %2, i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @S_OK, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32, i32* @test_enumJobsB, align 4
  %12 = call i64 @IEnumBackgroundCopyJobs_Reset(i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @test_enumJobsB, align 4
  %20 = load i32, i32* @test_jobCountB, align 4
  %21 = call i64 @IEnumBackgroundCopyJobs_Skip(i32 %19, i32 %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  ret void
}

declare dso_local i64 @IEnumBackgroundCopyJobs_Skip(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IEnumBackgroundCopyJobs_Reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
