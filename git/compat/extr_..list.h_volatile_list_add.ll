; ModuleID = '/home/carl/AnghaBench/git/compat/extr_..list.h_volatile_list_add.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_..list.h_volatile_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.volatile_list_head = type { %struct.volatile_list_head*, %struct.volatile_list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.volatile_list_head*, %struct.volatile_list_head*)* @volatile_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volatile_list_add(%struct.volatile_list_head* %0, %struct.volatile_list_head* %1) #0 {
  %3 = alloca %struct.volatile_list_head*, align 8
  %4 = alloca %struct.volatile_list_head*, align 8
  store %struct.volatile_list_head* %0, %struct.volatile_list_head** %3, align 8
  store %struct.volatile_list_head* %1, %struct.volatile_list_head** %4, align 8
  %5 = load %struct.volatile_list_head*, %struct.volatile_list_head** %3, align 8
  %6 = load %struct.volatile_list_head*, %struct.volatile_list_head** %4, align 8
  %7 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %6, i32 0, i32 0
  %8 = load volatile %struct.volatile_list_head*, %struct.volatile_list_head** %7, align 8
  %9 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %8, i32 0, i32 1
  store volatile %struct.volatile_list_head* %5, %struct.volatile_list_head** %9, align 8
  %10 = load %struct.volatile_list_head*, %struct.volatile_list_head** %4, align 8
  %11 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %10, i32 0, i32 0
  %12 = load volatile %struct.volatile_list_head*, %struct.volatile_list_head** %11, align 8
  %13 = load %struct.volatile_list_head*, %struct.volatile_list_head** %3, align 8
  %14 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %13, i32 0, i32 0
  store volatile %struct.volatile_list_head* %12, %struct.volatile_list_head** %14, align 8
  %15 = load %struct.volatile_list_head*, %struct.volatile_list_head** %4, align 8
  %16 = load %struct.volatile_list_head*, %struct.volatile_list_head** %3, align 8
  %17 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %16, i32 0, i32 1
  store volatile %struct.volatile_list_head* %15, %struct.volatile_list_head** %17, align 8
  %18 = load %struct.volatile_list_head*, %struct.volatile_list_head** %3, align 8
  %19 = load %struct.volatile_list_head*, %struct.volatile_list_head** %4, align 8
  %20 = getelementptr inbounds %struct.volatile_list_head, %struct.volatile_list_head* %19, i32 0, i32 0
  store volatile %struct.volatile_list_head* %18, %struct.volatile_list_head** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
