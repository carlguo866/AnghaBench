; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_steai_cv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_steai_cv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_aib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_aib*, i32)* @etr_steai_cv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etr_steai_cv(%struct.etr_aib* %0, i32 %1) #0 {
  %3 = alloca %struct.etr_aib*, align 8
  %4 = alloca i32, align 4
  store %struct.etr_aib* %0, %struct.etr_aib** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @etr_steai(%struct.etr_aib* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %12 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %18 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 2, i32* %19, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %22 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %28 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %34 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %26, %20
  br label %37

37:                                               ; preds = %36, %16
  %38 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %39 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %45 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 2, i32* %46, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %49 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %55 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.etr_aib*, %struct.etr_aib** %3, align 8
  %61 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %53, %47
  br label %64

64:                                               ; preds = %63, %43
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @etr_steai(%struct.etr_aib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
