; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_prtfile.c_FinishVisPortals2_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_prtfile.c_FinishVisPortals2_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FinishVisPortals2_r(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PLANENUM_LEAF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = call i32 @MakeNodePortal(%struct.TYPE_5__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call i32 @SplitNodePortals(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  call void @FinishVisPortals2_r(%struct.TYPE_5__* %18)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  call void @FinishVisPortals2_r(%struct.TYPE_5__* %23)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @MakeNodePortal(%struct.TYPE_5__*) #1

declare dso_local i32 @SplitNodePortals(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
