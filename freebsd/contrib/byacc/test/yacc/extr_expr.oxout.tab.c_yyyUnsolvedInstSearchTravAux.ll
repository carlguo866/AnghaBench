; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyUnsolvedInstSearchTravAux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_expr.oxout.tab.c_yyyUnsolvedInstSearchTravAux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyyUnsolvedInstSearchTravAux(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i32 @yyyCheckNodeInstancesSolved(%struct.TYPE_4__* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__** %9, %struct.TYPE_4__*** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %17, %1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  call void @yyyUnsolvedInstSearchTravAux(%struct.TYPE_4__* %19)
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i32 1
  store %struct.TYPE_4__** %21, %struct.TYPE_4__*** %3, align 8
  br label %13

22:                                               ; preds = %13
  ret void
}

declare dso_local i32 @yyyCheckNodeInstancesSolved(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
