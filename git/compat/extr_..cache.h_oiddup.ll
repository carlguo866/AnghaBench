; ModuleID = '/home/carl/AnghaBench/git/compat/extr_..cache.h_oiddup.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_..cache.h_oiddup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_id* (%struct.object_id*)* @oiddup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_id* @oiddup(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.object_id*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %4 = call %struct.object_id* @xmalloc(i32 4)
  store %struct.object_id* %4, %struct.object_id** %3, align 8
  %5 = load %struct.object_id*, %struct.object_id** %3, align 8
  %6 = load %struct.object_id*, %struct.object_id** %2, align 8
  %7 = call i32 @oidcpy(%struct.object_id* %5, %struct.object_id* %6)
  %8 = load %struct.object_id*, %struct.object_id** %3, align 8
  ret %struct.object_id* %8
}

declare dso_local %struct.object_id* @xmalloc(i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
