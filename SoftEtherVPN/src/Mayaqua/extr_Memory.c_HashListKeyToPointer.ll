; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_HashListKeyToPointer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_HashListKeyToPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HashListKeyToPointer(i32* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i8* null, i8** %3, align 8
  br label %47

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i8** @HashListToArray(i32* %18, i64* %6)
  store i8** %19, i8*** %8, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %47

23:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i8**, i8*** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @POINTER_TO_KEY(i8* %33)
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %37, %28
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %24

43:                                               ; preds = %24
  %44 = load i8**, i8*** %8, align 8
  %45 = call i32 @Free(i8** %44)
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %43, %22, %16
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8** @HashListToArray(i32*, i64*) #1

declare dso_local i64 @POINTER_TO_KEY(i8*) #1

declare dso_local i32 @Free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
