; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_ReplaceUnsafeCharInHttpTarget.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_ReplaceUnsafeCharInHttpTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplaceUnsafeCharInHttpTarget(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %4
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 60
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8 40, i8* %20, align 1
  br label %33

21:                                               ; preds = %10
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 62
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i8*, i8** %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 41, i8* %31, align 1
  br label %32

32:                                               ; preds = %28, %21
  br label %33

33:                                               ; preds = %32, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %4

37:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
