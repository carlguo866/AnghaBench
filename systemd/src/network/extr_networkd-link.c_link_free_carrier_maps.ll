; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_free_carrier_maps.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_free_carrier_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @link_free_carrier_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_free_carrier_maps(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @hashmap_isempty(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i32 @link_free_bound_to_list(%struct.TYPE_7__* %12)
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hashmap_isempty(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i32 @link_free_bound_by_list(%struct.TYPE_7__* %21)
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = call i32 @link_dirty(%struct.TYPE_7__* %27)
  br label %29

29:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @hashmap_isempty(i32) #1

declare dso_local i32 @link_free_bound_to_list(%struct.TYPE_7__*) #1

declare dso_local i32 @link_free_bound_by_list(%struct.TYPE_7__*) #1

declare dso_local i32 @link_dirty(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
