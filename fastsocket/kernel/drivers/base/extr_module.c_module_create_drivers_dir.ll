; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_module.c_module_create_drivers_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_module.c_module_create_drivers_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_kobject = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_kobject*)* @module_create_drivers_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @module_create_drivers_dir(%struct.module_kobject* %0) #0 {
  %2 = alloca %struct.module_kobject*, align 8
  store %struct.module_kobject* %0, %struct.module_kobject** %2, align 8
  %3 = load %struct.module_kobject*, %struct.module_kobject** %2, align 8
  %4 = icmp ne %struct.module_kobject* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.module_kobject*, %struct.module_kobject** %2, align 8
  %7 = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %17

11:                                               ; preds = %5
  %12 = load %struct.module_kobject*, %struct.module_kobject** %2, align 8
  %13 = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %12, i32 0, i32 0
  %14 = call i64 @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = load %struct.module_kobject*, %struct.module_kobject** %2, align 8
  %16 = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @kobject_create_and_add(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
