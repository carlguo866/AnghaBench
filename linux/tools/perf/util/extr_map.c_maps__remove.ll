; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_maps__remove.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_maps__remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maps = type { i32 }
%struct.map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maps__remove(%struct.maps* %0, %struct.map* %1) #0 {
  %3 = alloca %struct.maps*, align 8
  %4 = alloca %struct.map*, align 8
  store %struct.maps* %0, %struct.maps** %3, align 8
  store %struct.map* %1, %struct.map** %4, align 8
  %5 = load %struct.maps*, %struct.maps** %3, align 8
  %6 = getelementptr inbounds %struct.maps, %struct.maps* %5, i32 0, i32 0
  %7 = call i32 @down_write(i32* %6)
  %8 = load %struct.maps*, %struct.maps** %3, align 8
  %9 = load %struct.map*, %struct.map** %4, align 8
  %10 = call i32 @__maps__remove(%struct.maps* %8, %struct.map* %9)
  %11 = load %struct.maps*, %struct.maps** %3, align 8
  %12 = getelementptr inbounds %struct.maps, %struct.maps* %11, i32 0, i32 0
  %13 = call i32 @up_write(i32* %12)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__maps__remove(%struct.maps*, %struct.map*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
