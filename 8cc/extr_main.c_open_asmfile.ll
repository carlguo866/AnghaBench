; ModuleID = '/home/carl/AnghaBench/8cc/extr_main.c_open_asmfile.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_main.c_open_asmfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dumpasm = common dso_local global i64 0, align 8
@outfile = common dso_local global i64 0, align 8
@infile = common dso_local global i32 0, align 4
@asmfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"/tmp/8ccXXXXXX.s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mkstemps\00", align 1
@tmpfiles = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @open_asmfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_asmfile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @dumpasm, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i64, i64* @outfile, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load i64, i64* @outfile, align 8
  br label %14

10:                                               ; preds = %5
  %11 = load i32, i32* @infile, align 4
  %12 = call i32 @base(i32 %11)
  %13 = call i64 @replace_suffix(i32 %12, i8 signext 115)
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i64 [ %9, %8 ], [ %13, %10 ]
  store i64 %15, i64* @asmfile, align 8
  br label %27

16:                                               ; preds = %0
  %17 = call i64 @format(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* @asmfile, align 8
  %18 = load i64, i64* @asmfile, align 8
  %19 = call i32 @mkstemps(i64 %18, i32 2)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* @tmpfiles, align 4
  %25 = load i64, i64* @asmfile, align 8
  %26 = call i32 @vec_push(i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i64, i64* @asmfile, align 8
  %29 = call i32 @strcmp(i64 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** @stdout, align 8
  store i32* %32, i32** %1, align 8
  br label %42

33:                                               ; preds = %27
  %34 = load i64, i64* @asmfile, align 8
  %35 = call i32* @fopen(i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32*, i32** %2, align 8
  store i32* %41, i32** %1, align 8
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32*, i32** %1, align 8
  ret i32* %43
}

declare dso_local i64 @replace_suffix(i32, i8 signext) #1

declare dso_local i32 @base(i32) #1

declare dso_local i64 @format(i8*) #1

declare dso_local i32 @mkstemps(i64, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @vec_push(i32, i64) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32* @fopen(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
