; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_get_engine_score.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_get_engine_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double* }

@cl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double ()* @get_engine_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_engine_score() #0 {
  %1 = load double*, double** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load i64, i64* @PERS_SCORE, align 8
  %3 = getelementptr inbounds double, double* %1, i64 %2
  %4 = load double, double* %3, align 8
  ret double %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
