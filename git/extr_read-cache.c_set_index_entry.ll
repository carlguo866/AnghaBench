; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_set_index_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_set_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i32, %struct.cache_entry*)* @set_index_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_index_entry(%struct.index_state* %0, i32 %1, %struct.cache_entry* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cache_entry* %2, %struct.cache_entry** %6, align 8
  %7 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %8 = load %struct.index_state*, %struct.index_state** %4, align 8
  %9 = getelementptr inbounds %struct.index_state, %struct.index_state* %8, i32 0, i32 0
  %10 = load %struct.cache_entry**, %struct.cache_entry*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %10, i64 %12
  store %struct.cache_entry* %7, %struct.cache_entry** %13, align 8
  %14 = load %struct.index_state*, %struct.index_state** %4, align 8
  %15 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %16 = call i32 @add_name_hash(%struct.index_state* %14, %struct.cache_entry* %15)
  ret void
}

declare dso_local i32 @add_name_hash(%struct.index_state*, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
