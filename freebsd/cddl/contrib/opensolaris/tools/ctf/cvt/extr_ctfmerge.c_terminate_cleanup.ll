; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfmerge.c_terminate_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfmerge.c_terminate_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"CTFMERGE_TERMINATE_NO_UNLINK\00", align 1
@tmpname = common dso_local global i8* null, align 8
@outfile = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Removing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @terminate_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @getenv(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i32 0, i32 1
  store i32 %5, i32* %1, align 4
  %6 = load i8*, i8** @tmpname, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i8*, i8** @tmpname, align 8
  %13 = call i32 @unlink(i8* %12)
  br label %14

14:                                               ; preds = %11, %8, %0
  %15 = load i8*, i8** @outfile, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** @outfile, align 8
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** @outfile, align 8
  %26 = call i32 @unlink(i8* %25)
  br label %27

27:                                               ; preds = %17, %21, %18
  ret void
}

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
