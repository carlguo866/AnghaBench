; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_validate_urifrag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_validate_urifrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @validate_urifrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_urifrag(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

4:                                                ; preds = %35, %1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 0, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @isalnum(i8 zeroext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 45, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 46, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 47, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 95, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %39

35:                                               ; preds = %29, %24, %19, %14, %9
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  br label %4

38:                                               ; preds = %4
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
