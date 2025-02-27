; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_push_ls.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_push_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_level = type { i32 }
%struct.level_stack = type { %struct.sort_level* }

@g_ls_cond = common dso_local global i32 0, align 4
@g_ls_mutex = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sort_level*)* @push_ls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_ls(%struct.sort_level* %0) #0 {
  %2 = alloca %struct.sort_level*, align 8
  %3 = alloca %struct.level_stack*, align 8
  store %struct.sort_level* %0, %struct.sort_level** %2, align 8
  %4 = call %struct.level_stack* @sort_malloc(i32 8)
  store %struct.level_stack* %4, %struct.level_stack** %3, align 8
  %5 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %6 = load %struct.level_stack*, %struct.level_stack** %3, align 8
  %7 = getelementptr inbounds %struct.level_stack, %struct.level_stack* %6, i32 0, i32 0
  store %struct.sort_level* %5, %struct.sort_level** %7, align 8
  %8 = load %struct.level_stack*, %struct.level_stack** %3, align 8
  %9 = call i32 @_push_ls(%struct.level_stack* %8)
  ret void
}

declare dso_local %struct.level_stack* @sort_malloc(i32) #1

declare dso_local i32 @_push_ls(%struct.level_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
