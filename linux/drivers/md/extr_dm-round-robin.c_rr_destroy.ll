; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-round-robin.c_rr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-round-robin.c_rr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { %struct.selector* }
%struct.selector = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path_selector*)* @rr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rr_destroy(%struct.path_selector* %0) #0 {
  %2 = alloca %struct.path_selector*, align 8
  %3 = alloca %struct.selector*, align 8
  store %struct.path_selector* %0, %struct.path_selector** %2, align 8
  %4 = load %struct.path_selector*, %struct.path_selector** %2, align 8
  %5 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %4, i32 0, i32 0
  %6 = load %struct.selector*, %struct.selector** %5, align 8
  store %struct.selector* %6, %struct.selector** %3, align 8
  %7 = load %struct.selector*, %struct.selector** %3, align 8
  %8 = getelementptr inbounds %struct.selector, %struct.selector* %7, i32 0, i32 1
  %9 = call i32 @free_paths(i32* %8)
  %10 = load %struct.selector*, %struct.selector** %3, align 8
  %11 = getelementptr inbounds %struct.selector, %struct.selector* %10, i32 0, i32 0
  %12 = call i32 @free_paths(i32* %11)
  %13 = load %struct.selector*, %struct.selector** %3, align 8
  %14 = call i32 @kfree(%struct.selector* %13)
  %15 = load %struct.path_selector*, %struct.path_selector** %2, align 8
  %16 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %15, i32 0, i32 0
  store %struct.selector* null, %struct.selector** %16, align 8
  ret void
}

declare dso_local i32 @free_paths(i32*) #1

declare dso_local i32 @kfree(%struct.selector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
