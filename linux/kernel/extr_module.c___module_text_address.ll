; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c___module_text_address.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c___module_text_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.module* @__module_text_address(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.module*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call %struct.module* @__module_address(i64 %4)
  store %struct.module* %5, %struct.module** %3, align 8
  %6 = load %struct.module*, %struct.module** %3, align 8
  %7 = icmp ne %struct.module* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = load %struct.module*, %struct.module** %3, align 8
  %11 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.module*, %struct.module** %3, align 8
  %15 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @within(i64 %9, i32 %13, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %8
  %21 = load i64, i64* %2, align 8
  %22 = load %struct.module*, %struct.module** %3, align 8
  %23 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.module*, %struct.module** %3, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @within(i64 %21, i32 %25, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  store %struct.module* null, %struct.module** %3, align 8
  br label %33

33:                                               ; preds = %32, %20, %8
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.module*, %struct.module** %3, align 8
  ret %struct.module* %35
}

declare dso_local %struct.module* @__module_address(i64) #1

declare dso_local i32 @within(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
