; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_ParseExprKindName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_ParseExprKindName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"invalid expression context\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"extension expression\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"JOIN/ON\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"JOIN/USING\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"sub-SELECT in FROM\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"function in FROM\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"POLICY\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"HAVING\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"window PARTITION BY\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"window ORDER BY\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"window RANGE\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"window ROWS\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"window GROUPS\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"GROUP BY\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ORDER BY\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"DISTINCT ON\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"LIMIT\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"RETURNING\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"VALUES\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"index expression\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"index predicate\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"USING\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"EXECUTE\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"WHEN\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"partition bound\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"PARTITION BY\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"GENERATED AS\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"unrecognized expression kind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ParseExprKindName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %42 [
    i32 147, label %5
    i32 144, label %6
    i32 150, label %7
    i32 149, label %8
    i32 158, label %9
    i32 159, label %10
    i32 133, label %11
    i32 141, label %12
    i32 154, label %13
    i32 160, label %14
    i32 128, label %15
    i32 129, label %16
    i32 131, label %17
    i32 130, label %18
    i32 132, label %19
    i32 139, label %20
    i32 151, label %21
    i32 137, label %22
    i32 136, label %22
    i32 155, label %23
    i32 145, label %24
    i32 163, label %25
    i32 148, label %26
    i32 146, label %27
    i32 140, label %28
    i32 135, label %29
    i32 134, label %29
    i32 166, label %30
    i32 162, label %30
    i32 165, label %31
    i32 157, label %31
    i32 153, label %32
    i32 152, label %33
    i32 168, label %34
    i32 161, label %35
    i32 138, label %36
    i32 143, label %37
    i32 142, label %38
    i32 167, label %39
    i32 164, label %40
    i32 156, label %41
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %43

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %43

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %43

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %43

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %43

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %43

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %43

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %43

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %43

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %43

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %43

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %43

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %43

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %43

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %43

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %43

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %43

22:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %43

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %43

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %43

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %43

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %43

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %43

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %43

29:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %43

30:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %43

31:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %43

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %43

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %43

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %43

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %43

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %43

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %43

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %43

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %43

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %43

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %43

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
