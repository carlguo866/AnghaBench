; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libstdbuf/extr_stdbuf.c_stream_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libstdbuf/extr_stdbuf.c_stream_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @stream_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stream_name(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32*, i32** @stdin, align 8
  %6 = icmp eq i32* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** @stdout, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %20

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** @stderr, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @abort() #2
  unreachable

20:                                               ; preds = %17, %12, %7
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
