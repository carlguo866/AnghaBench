; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlFileClose.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlFileClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"fflush()\00", align 1
@stdin = common dso_local global i32* null, align 8
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"fclose()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlFileClose(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %46

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** @stdout, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** @stderr, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %9
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @fflush(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @xmlIOErr(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  store i32 0, i32* %2, align 4
  br label %46

27:                                               ; preds = %15
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** @stdin, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %46

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = call i64 @fclose(i32* %34)
  %36 = load i64, i64* @EOF, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 -1, i32 0
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 @xmlIOErr(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %31, %26, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @xmlIOErr(i32, i8*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
