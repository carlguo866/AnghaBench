; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_resample_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_resample_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**)* @resample_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resample_free(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  %4 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @av_freep(%struct.TYPE_4__** %11)
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %14 = call i32 @av_freep(%struct.TYPE_4__** %13)
  br label %15

15:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @av_freep(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
