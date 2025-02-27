; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c_memstat_mtl_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c_memstat_mtl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_list = type { i32, i32 }

@MEMSTAT_ERROR_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.memory_type_list* @memstat_mtl_alloc() #0 {
  %1 = alloca %struct.memory_type_list*, align 8
  %2 = alloca %struct.memory_type_list*, align 8
  %3 = call %struct.memory_type_list* @malloc(i32 8)
  store %struct.memory_type_list* %3, %struct.memory_type_list** %2, align 8
  %4 = load %struct.memory_type_list*, %struct.memory_type_list** %2, align 8
  %5 = icmp eq %struct.memory_type_list* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.memory_type_list* null, %struct.memory_type_list** %1, align 8
  br label %15

7:                                                ; preds = %0
  %8 = load %struct.memory_type_list*, %struct.memory_type_list** %2, align 8
  %9 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %8, i32 0, i32 1
  %10 = call i32 @LIST_INIT(i32* %9)
  %11 = load i32, i32* @MEMSTAT_ERROR_UNDEFINED, align 4
  %12 = load %struct.memory_type_list*, %struct.memory_type_list** %2, align 8
  %13 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.memory_type_list*, %struct.memory_type_list** %2, align 8
  store %struct.memory_type_list* %14, %struct.memory_type_list** %1, align 8
  br label %15

15:                                               ; preds = %7, %6
  %16 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  ret %struct.memory_type_list* %16
}

declare dso_local %struct.memory_type_list* @malloc(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
