; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_at_sb.c_ClassInitialize.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_at_sb.c_ClassInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XtRString = common dso_local global i32 0, align 4
@XtROrientation = common dso_local global i32 0, align 4
@XmuCvtStringToOrientation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ClassInitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClassInitialize() #0 {
  %1 = call i32 (...) @XawInitializeWidgetSet()
  %2 = load i32, i32* @XtRString, align 4
  %3 = load i32, i32* @XtROrientation, align 4
  %4 = load i32, i32* @XmuCvtStringToOrientation, align 4
  %5 = call i32 @XtAddConverter(i32 %2, i32 %3, i32 %4, i32 0, i32 0)
  ret void
}

declare dso_local i32 @XawInitializeWidgetSet(...) #1

declare dso_local i32 @XtAddConverter(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
