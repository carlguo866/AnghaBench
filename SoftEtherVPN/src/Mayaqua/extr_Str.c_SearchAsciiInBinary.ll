; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_SearchAsciiInBinary.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_SearchAsciiInBinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SearchAsciiInBinary(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @INFINITE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %4
  %22 = load i32, i32* @INFINITE, align 4
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @ZeroMalloc(i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @Copy(i8* %27, i8* %28, i32 %29)
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @SearchStrEx(i8* %31, i8* %32, i32 0, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @Free(i8* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %23, %21
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i32 @SearchStrEx(i8*, i8*, i32, i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
