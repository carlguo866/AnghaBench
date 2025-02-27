; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_init_basic_state.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_init_basic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"could not create temporary %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"REBASE_HEAD\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"could not mark as interactive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.replay_opts*, i8*, %struct.commit*, i8*)* @init_basic_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_basic_state(%struct.replay_opts* %0, i8* %1, %struct.commit* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.replay_opts*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.commit* %2, %struct.commit** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i32 (...) @merge_dir()
  %12 = call i32 @is_directory(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = call i32 (...) @merge_dir()
  %16 = call i64 @mkdir_in_gitdir(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @merge_dir()
  %21 = call i32 (i32, ...) @error_errno(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %39

22:                                               ; preds = %14, %4
  %23 = call i32 @delete_reflog(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @path_interactive()
  %25 = call i32* @fopen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 (i32, ...) @error_errno(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load %struct.replay_opts*, %struct.replay_opts** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.commit*, %struct.commit** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @write_basic_state(%struct.replay_opts* %34, i8* %35, %struct.commit* %36, i8* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %28, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @is_directory(i32) #1

declare dso_local i32 @merge_dir(...) #1

declare dso_local i64 @mkdir_in_gitdir(i32) #1

declare dso_local i32 @error_errno(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @delete_reflog(i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @path_interactive(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @write_basic_state(%struct.replay_opts*, i8*, %struct.commit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
