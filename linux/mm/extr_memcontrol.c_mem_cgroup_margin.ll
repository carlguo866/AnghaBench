; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_margin.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_cgroup*)* @mem_cgroup_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mem_cgroup_margin(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %7 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %6, i32 0, i32 1
  %8 = call i64 @page_counter_read(%struct.TYPE_2__* %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %10 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @READ_ONCE(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = call i64 (...) @do_memsw_account()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %26 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %25, i32 0, i32 0
  %27 = call i64 @page_counter_read(%struct.TYPE_2__* %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %29 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @READ_ONCE(i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub i64 %38, %39
  %41 = call i64 @min(i64 %37, i64 %40)
  store i64 %41, i64* %3, align 8
  br label %43

42:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i64 @page_counter_read(%struct.TYPE_2__*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @do_memsw_account(...) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
