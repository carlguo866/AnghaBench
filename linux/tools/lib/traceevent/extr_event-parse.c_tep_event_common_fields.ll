; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_event_common_fields.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_event_common_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { i32 }
%struct.tep_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"common\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tep_format_field** @tep_event_common_fields(%struct.tep_event* %0) #0 {
  %2 = alloca %struct.tep_event*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %2, align 8
  %3 = load %struct.tep_event*, %struct.tep_event** %2, align 8
  %4 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.tep_event*, %struct.tep_event** %2, align 8
  %7 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tep_event*, %struct.tep_event** %2, align 8
  %11 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tep_format_field** @get_event_fields(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %9, i32 %13)
  ret %struct.tep_format_field** %14
}

declare dso_local %struct.tep_format_field** @get_event_fields(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
