; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_parse_countid_with_version.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_parse_countid_with_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%lld@%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_countid_with_version(i8* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strchr(i8* %9, i8 signext 64)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %14, i32* %15)
  %17 = icmp eq i32 %16, 2
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %21)
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
