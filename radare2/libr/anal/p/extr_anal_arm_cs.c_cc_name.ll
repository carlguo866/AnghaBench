; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_cc_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_cc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"vs\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @cc_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cc_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %19 [
    i32 141, label %5
    i32 131, label %6
    i32 137, label %7
    i32 135, label %8
    i32 132, label %9
    i32 130, label %10
    i32 128, label %11
    i32 129, label %12
    i32 138, label %13
    i32 134, label %14
    i32 140, label %15
    i32 133, label %16
    i32 139, label %17
    i32 136, label %18
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %20

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %20

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %20

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %20

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %20

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %20

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %20

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %20

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %20

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %20

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %20

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %20

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %20

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %20

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
