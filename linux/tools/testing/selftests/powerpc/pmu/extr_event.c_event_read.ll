; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_event.c_event_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_event.c_event_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"read error on event %p!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_read(%struct.event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.event*, align 8
  %4 = alloca i32, align 4
  store %struct.event* %0, %struct.event** %3, align 8
  %5 = load %struct.event*, %struct.event** %3, align 8
  %6 = getelementptr inbounds %struct.event, %struct.event* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.event*, %struct.event** %3, align 8
  %9 = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 0
  %10 = call i32 @read(i32 %7, i32* %9, i32 4)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.event*, %struct.event** %3, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.event* %16)
  store i32 -1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
