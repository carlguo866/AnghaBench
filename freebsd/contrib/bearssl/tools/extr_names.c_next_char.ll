; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_next_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_next_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @next_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_char(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %7
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %14, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 65
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 90
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 32
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %25, %22
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @is_ign(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %31
  br label %7

38:                                               ; preds = %35, %21, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @is_ign(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
