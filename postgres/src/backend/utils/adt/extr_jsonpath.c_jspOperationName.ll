; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath.c_jspOperationName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath.c_jspOperationName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"starts with\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"like_regex\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"keyvalue\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [36 x i8] c"unrecognized jsonpath item type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jspOperationName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %28 [
    i32 150, label %5
    i32 133, label %6
    i32 145, label %7
    i32 134, label %8
    i32 140, label %9
    i32 143, label %10
    i32 139, label %11
    i32 142, label %12
    i32 132, label %13
    i32 151, label %13
    i32 137, label %14
    i32 129, label %14
    i32 135, label %15
    i32 147, label %16
    i32 136, label %17
    i32 130, label %18
    i32 138, label %19
    i32 128, label %20
    i32 131, label %21
    i32 141, label %22
    i32 146, label %23
    i32 152, label %24
    i32 144, label %25
    i32 149, label %26
    i32 148, label %27
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %32

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %32

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %32

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %32

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %32

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %32

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %32

13:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %32

14:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %32

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %32

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %32

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %32

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %32

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %32

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %32

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %32

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %32

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %32

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %32

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %32

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %32

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i32 %30)
  store i8* null, i8** %2, align 8
  br label %32

32:                                               ; preds = %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
