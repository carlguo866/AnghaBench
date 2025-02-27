; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_shrink_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_shrink_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup_zone = type { i32 }
%struct.scan_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, %struct.mem_cgroup_zone*, %struct.scan_control*, i32)* @shrink_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @shrink_list(i32 %0, i64 %1, %struct.mem_cgroup_zone* %2, %struct.scan_control* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mem_cgroup_zone*, align 8
  %10 = alloca %struct.scan_control*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store %struct.mem_cgroup_zone* %2, %struct.mem_cgroup_zone** %9, align 8
  store %struct.scan_control* %3, %struct.scan_control** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @is_file_lru(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @is_active_lru(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @inactive_list_is_low(%struct.mem_cgroup_zone* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %9, align 8
  %26 = load %struct.scan_control*, %struct.scan_control** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @shrink_active_list(i64 %24, %struct.mem_cgroup_zone* %25, %struct.scan_control* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %18
  store i64 0, i64* %6, align 8
  br label %38

31:                                               ; preds = %5
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %9, align 8
  %34 = load %struct.scan_control*, %struct.scan_control** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @shrink_inactive_list(i64 %32, %struct.mem_cgroup_zone* %33, %struct.scan_control* %34, i32 %35, i32 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

declare dso_local i32 @is_file_lru(i32) #1

declare dso_local i64 @is_active_lru(i32) #1

declare dso_local i64 @inactive_list_is_low(%struct.mem_cgroup_zone*, i32) #1

declare dso_local i32 @shrink_active_list(i64, %struct.mem_cgroup_zone*, %struct.scan_control*, i32, i32) #1

declare dso_local i64 @shrink_inactive_list(i64, %struct.mem_cgroup_zone*, %struct.scan_control*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
