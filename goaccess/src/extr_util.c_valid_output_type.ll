; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_util.c_valid_output_type.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_util.c_valid_output_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"csv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_output_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strrchr(i8* %6, i8 signext 46)
  store i8* %7, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 3
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = icmp ugt i64 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %10
  store i32 0, i32* %2, align 4
  br label %37

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %30, %25, %20, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
