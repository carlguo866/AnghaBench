; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_koi8-ru.c_uni2char.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_koi8-ru.c_uni2char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@p_nls = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @uni2char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni2char(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @ENAMETOOLONG, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %52

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 65455
  %16 = icmp eq i32 %15, 1038
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65486
  %20 = icmp eq i32 %19, 9548
  br i1 %20, label %21, label %44

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1038
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 190, i32* %4, align 4
  br label %52

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1118
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 174, i32* %4, align 4
  br label %52

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 9565
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 9580
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 0, i32* %4, align 4
  br label %52

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 %39(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %17
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 %47(i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %36, %35, %28, %24, %10
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
