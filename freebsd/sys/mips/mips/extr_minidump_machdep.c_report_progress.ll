; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_minidump_machdep.c_report_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_minidump_machdep.c_report_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@progress_track = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"..%d%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @report_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_progress(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = mul nsw i32 %7, 100
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %8, %9
  %11 = sub nsw i32 100, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %15 = call i32 @nitems(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %18, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %17
  br label %53

36:                                               ; preds = %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %56

45:                                               ; preds = %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %12

56:                                               ; preds = %44, %45, %12
  ret void
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
