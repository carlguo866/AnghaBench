; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_klist.c_klist_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_klist.c_klist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist = type { void (%struct.klist_node*)*, void (%struct.klist_node.0*)*, i32, i32 }
%struct.klist_node = type opaque
%struct.klist_node.0 = type opaque
%struct.klist_node.1 = type opaque
%struct.klist_node.2 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klist_init(%struct.klist* %0, void (%struct.klist_node.1*)* %1, void (%struct.klist_node.2*)* %2) #0 {
  %4 = alloca %struct.klist*, align 8
  %5 = alloca void (%struct.klist_node.1*)*, align 8
  %6 = alloca void (%struct.klist_node.2*)*, align 8
  store %struct.klist* %0, %struct.klist** %4, align 8
  store void (%struct.klist_node.1*)* %1, void (%struct.klist_node.1*)** %5, align 8
  store void (%struct.klist_node.2*)* %2, void (%struct.klist_node.2*)** %6, align 8
  %7 = load %struct.klist*, %struct.klist** %4, align 8
  %8 = getelementptr inbounds %struct.klist, %struct.klist* %7, i32 0, i32 3
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.klist*, %struct.klist** %4, align 8
  %11 = getelementptr inbounds %struct.klist, %struct.klist* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load void (%struct.klist_node.1*)*, void (%struct.klist_node.1*)** %5, align 8
  %14 = bitcast void (%struct.klist_node.1*)* %13 to void (%struct.klist_node*)*
  %15 = load %struct.klist*, %struct.klist** %4, align 8
  %16 = getelementptr inbounds %struct.klist, %struct.klist* %15, i32 0, i32 0
  store void (%struct.klist_node*)* %14, void (%struct.klist_node*)** %16, align 8
  %17 = load void (%struct.klist_node.2*)*, void (%struct.klist_node.2*)** %6, align 8
  %18 = bitcast void (%struct.klist_node.2*)* %17 to void (%struct.klist_node.0*)*
  %19 = load %struct.klist*, %struct.klist** %4, align 8
  %20 = getelementptr inbounds %struct.klist, %struct.klist* %19, i32 0, i32 1
  store void (%struct.klist_node.0*)* %18, void (%struct.klist_node.0*)** %20, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
