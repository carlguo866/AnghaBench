; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_get_awdl_unrestricted.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_get_awdl_unrestricted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }

@INP2_AWDL_UNRESTRICTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inp_get_awdl_unrestricted(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %3 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %4 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @INP2_AWDL_UNRESTRICTED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @TRUE, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
