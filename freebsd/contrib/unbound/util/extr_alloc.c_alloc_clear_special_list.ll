; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_clear_special_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_clear_special_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alloc_cache*)* @alloc_clear_special_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_clear_special_list(%struct.alloc_cache* %0) #0 {
  %2 = alloca %struct.alloc_cache*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %2, align 8
  %5 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %6 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call %struct.TYPE_7__* @alloc_special_next(%struct.TYPE_7__* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @lock_rw_destroy(i32* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i32 @free(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %3, align 8
  br label %8

21:                                               ; preds = %8
  ret void
}

declare dso_local %struct.TYPE_7__* @alloc_special_next(%struct.TYPE_7__*) #1

declare dso_local i32 @lock_rw_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
