; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_serialize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @slice_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_serialize(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_9__* @SLICE(i32* %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %11 = call i32 @assert(%struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_9__* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = call i32 @assert(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @slice_state_to_string(i32 %19)
  %21 = call i32 @serialize_item(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @SLICE(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @serialize_item(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @slice_state_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
