; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_move.c_validate_botline.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_move.c_validate_botline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@curwin = common dso_local global %struct.TYPE_3__* null, align 8
@VALID_BOTLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_botline() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @VALID_BOTLINE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %9 = call i32 @comp_botline(%struct.TYPE_3__* %8)
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @comp_botline(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
