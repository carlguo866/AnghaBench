; ModuleID = '/home/carl/AnghaBench/tig/src/extr_help.c_help_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_help.c_help_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
