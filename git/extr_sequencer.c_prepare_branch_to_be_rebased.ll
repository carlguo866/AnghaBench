; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_prepare_branch_to_be_rebased.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_prepare_branch_to_be_rebased.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"checkout %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"could not checkout %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_branch_to_be_rebased(%struct.repository* %0, %struct.replay_opts* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.replay_opts*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @reflog_message(%struct.replay_opts* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load %struct.repository*, %struct.repository** %5, align 8
  %21 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @run_git_checkout(%struct.repository* %20, %struct.replay_opts* %21, i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @error(i32 %27, i8* %28)
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %11, %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i8* @reflog_message(%struct.replay_opts*, i8*, i8*, i8*) #1

declare dso_local i64 @run_git_checkout(%struct.repository*, %struct.replay_opts*, i8*, i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
