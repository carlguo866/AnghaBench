; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kref.c_kref_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kref.c_kref_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }

@kfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kref_sub(%struct.kref* %0, i32 %1, void (%struct.kref*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %0, %struct.kref** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.kref*)* %2, void (%struct.kref*)** %7, align 8
  %8 = load void (%struct.kref*)*, void (%struct.kref*)** %7, align 8
  %9 = icmp eq void (%struct.kref*)* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load void (%struct.kref*)*, void (%struct.kref*)** %7, align 8
  %13 = load i64, i64* @kfree, align 8
  %14 = inttoptr i64 %13 to void (%struct.kref*)*
  %15 = icmp eq void (%struct.kref*)* %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.kref*, %struct.kref** %5, align 8
  %20 = getelementptr inbounds %struct.kref, %struct.kref* %19, i32 0, i32 0
  %21 = call i64 @atomic_sub_and_test(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load void (%struct.kref*)*, void (%struct.kref*)** %7, align 8
  %25 = load %struct.kref*, %struct.kref** %5, align 8
  call void %24(%struct.kref* %25)
  store i32 1, i32* %4, align 4
  br label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_sub_and_test(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
