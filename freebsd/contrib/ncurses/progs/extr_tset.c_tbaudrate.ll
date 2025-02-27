; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_tbaudrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_tbaudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@speeds = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown baud rate %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tbaudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbaudrate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 66
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %2, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speeds, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %3, align 8
  br label %15

15:                                               ; preds = %30, %13
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @CaselessCmp(i8* %21, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 1
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %3, align 8
  br label %15

33:                                               ; preds = %27, %15
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  ret i32 %42
}

declare dso_local i32 @CaselessCmp(i8*, i64) #1

declare dso_local i32 @err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
