; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_mdoc_a2sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_mdoc_a2sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC__MAX = common dso_local global i64 0, align 8
@secnames = common dso_local global i64* null, align 8
@SEC_CUSTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdoc_a2sec(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i64, i64* @SEC__MAX, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = load i64*, i64** @secnames, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = load i64*, i64** @secnames, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @strcmp(i8* %18, i64 %23)
  %25 = icmp eq i64 0, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %17, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* @SEC_CUSTOM, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
