; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clarfs.h_fs_rm.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clarfs.h_fs_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"/bin/rm\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-Rf\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to cleanup the sandbox\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fs_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_rm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 16
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 2
  store i8* %6, i8** %7, align 16
  %8 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 3
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 0
  %10 = call i32 @shell_out(i8** %9)
  %11 = call i32 @cl_must_pass_(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_must_pass_(i32, i8*) #1

declare dso_local i32 @shell_out(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
