; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_sharedbook.c_vorbis_staticbook_destroy.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_sharedbook.c_vorbis_staticbook_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vorbis_staticbook_destroy(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @_ogg_free(%struct.TYPE_5__* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @_ogg_free(%struct.TYPE_5__* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = call i32 @memset(%struct.TYPE_5__* %23, i32 0, i32 16)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = call i32 @_ogg_free(%struct.TYPE_5__* %25)
  ret void
}

declare dso_local i32 @_ogg_free(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
