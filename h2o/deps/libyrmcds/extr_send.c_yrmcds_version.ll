; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_version.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_CMD_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_version(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %9, i32* %3, align 4
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @yrmcds_text_version(%struct.TYPE_5__* %16, i32* %17)
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %10
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* @YRMCDS_CMD_VERSION, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @send_command(%struct.TYPE_5__* %20, i32 %21, i32 0, i32* %22, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %15, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @yrmcds_text_version(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @send_command(%struct.TYPE_5__*, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
