; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_stat_validity_check.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_stat_validity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_validity = type { i32* }
%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stat_validity_check(%struct.stat_validity* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat_validity*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.stat_validity* %0, %struct.stat_validity** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @stat(i8* %7, %struct.stat* %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.stat_validity*, %struct.stat_validity** %4, align 8
  %12 = getelementptr inbounds %struct.stat_validity, %struct.stat_validity* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.stat_validity*, %struct.stat_validity** %4, align 8
  %18 = getelementptr inbounds %struct.stat_validity, %struct.stat_validity* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISREG(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.stat_validity*, %struct.stat_validity** %4, align 8
  %29 = getelementptr inbounds %struct.stat_validity, %struct.stat_validity* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @match_stat_data(i32* %30, %struct.stat* %6)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi i1 [ false, %22 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %21, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @match_stat_data(i32*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
