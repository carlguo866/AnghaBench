; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_insert_slot_to_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_insert_slot_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { %struct.temp_slot*, %struct.temp_slot* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.temp_slot*, %struct.temp_slot**)* @insert_slot_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_slot_to_list(%struct.temp_slot* %0, %struct.temp_slot** %1) #0 {
  %3 = alloca %struct.temp_slot*, align 8
  %4 = alloca %struct.temp_slot**, align 8
  store %struct.temp_slot* %0, %struct.temp_slot** %3, align 8
  store %struct.temp_slot** %1, %struct.temp_slot*** %4, align 8
  %5 = load %struct.temp_slot**, %struct.temp_slot*** %4, align 8
  %6 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %7 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %8 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %7, i32 0, i32 1
  store %struct.temp_slot* %6, %struct.temp_slot** %8, align 8
  %9 = load %struct.temp_slot**, %struct.temp_slot*** %4, align 8
  %10 = load %struct.temp_slot*, %struct.temp_slot** %9, align 8
  %11 = icmp ne %struct.temp_slot* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %14 = load %struct.temp_slot**, %struct.temp_slot*** %4, align 8
  %15 = load %struct.temp_slot*, %struct.temp_slot** %14, align 8
  %16 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %15, i32 0, i32 0
  store %struct.temp_slot* %13, %struct.temp_slot** %16, align 8
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %19 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %18, i32 0, i32 0
  store %struct.temp_slot* null, %struct.temp_slot** %19, align 8
  %20 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %21 = load %struct.temp_slot**, %struct.temp_slot*** %4, align 8
  store %struct.temp_slot* %20, %struct.temp_slot** %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
