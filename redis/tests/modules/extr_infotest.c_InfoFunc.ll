; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_infotest.c_InfoFunc.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_infotest.c_InfoFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Spanish\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"uno\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dos\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Italian\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"due\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tre\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"keyspace\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"db0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Klingon\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"wa\E2\80\99\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"cha\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"wej\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InfoFunc(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @RedisModule_InfoAddSection(i32* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @RedisModule_InfoAddFieldLongLong(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -2)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @RedisModule_InfoAddSection(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @RedisModule_InfoAddFieldCString(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @RedisModule_InfoAddFieldLongLong(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @RedisModule_InfoAddSection(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @RedisModule_InfoAddFieldLongLong(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @RedisModule_InfoAddFieldDouble(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), double 3.300000e+00)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @RedisModule_InfoAddSection(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @RedisModule_InfoBeginDictField(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @RedisModule_InfoAddFieldLongLong(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @RedisModule_InfoAddFieldLongLong(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @RedisModule_InfoEndDictField(i32* %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @RedisModule_InfoAddSection(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @RedisModule_InfoAddFieldCString(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @RedisModule_InfoAddFieldCString(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @RedisModule_InfoAddFieldCString(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %42

42:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @RedisModule_InfoAddSection(i32*, i8*) #1

declare dso_local i32 @RedisModule_InfoAddFieldLongLong(i32*, i8*, i32) #1

declare dso_local i32 @RedisModule_InfoAddFieldCString(i32*, i8*, i8*) #1

declare dso_local i32 @RedisModule_InfoAddFieldDouble(i32*, i8*, double) #1

declare dso_local i32 @RedisModule_InfoBeginDictField(i32*, i8*) #1

declare dso_local i32 @RedisModule_InfoEndDictField(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
