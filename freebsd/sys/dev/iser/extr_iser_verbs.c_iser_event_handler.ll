; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event_handler = type { i32 }
%struct.ib_event = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"async event %d on device %s port %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event_handler*, %struct.ib_event*)* @iser_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_event_handler(%struct.ib_event_handler* %0, %struct.ib_event* %1) #0 {
  %3 = alloca %struct.ib_event_handler*, align 8
  %4 = alloca %struct.ib_event*, align 8
  store %struct.ib_event_handler* %0, %struct.ib_event_handler** %3, align 8
  store %struct.ib_event* %1, %struct.ib_event** %4, align 8
  %5 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %6 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %9 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %14 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ISER_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %12, i32 %16)
  ret void
}

declare dso_local i32 @ISER_ERR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
