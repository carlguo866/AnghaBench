; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_world.c_R_DlightTrisurf.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_world.c_R_DlightTrisurf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64*, i64 }
%struct.TYPE_13__ = type { i64**, i32* }
%struct.TYPE_10__ = type { i32* }

@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@grid = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @R_DlightTrisurf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_DlightTrisurf(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 %5, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
