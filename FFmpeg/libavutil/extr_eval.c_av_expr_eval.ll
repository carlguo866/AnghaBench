; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_av_expr_eval.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_av_expr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { double*, i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @av_expr_eval(%struct.TYPE_7__* %0, double* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store double* %1, double** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load double*, double** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store double* %13, double** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call double @eval_expr(%struct.TYPE_6__* %7, %struct.TYPE_7__* %17)
  ret double %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local double @eval_expr(%struct.TYPE_6__*, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
