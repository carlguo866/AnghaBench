; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/onchange/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/onchange/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Usage: %s <command> <file1> [file2 ...]\0A\00", align 1
@loop = common dso_local global i32 0, align 4
@command = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Adding watch on %s\0A\00", align 1
@run_command = common dso_local global i32 0, align 4
@UV_FS_EVENT_RECURSIVE = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = call i32 (...) @uv_default_loop()
  store i32 %16, i32* @loop, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @command, align 8
  br label %20

20:                                               ; preds = %24, %15
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = icmp sgt i32 %21, 2
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = call i32* @malloc(i32 4)
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* @loop, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @uv_fs_event_init(i32 %33, i32* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @run_command, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @UV_FS_EVENT_RECURSIVE, align 4
  %44 = call i32 @uv_fs_event_start(i32* %36, i32 %37, i8* %42, i32 %43)
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* @loop, align 4
  %47 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %48 = call i32 @uv_run(i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @uv_fs_event_init(i32, i32*) #1

declare dso_local i32 @uv_fs_event_start(i32*, i32, i8*, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
