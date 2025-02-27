; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_set_deadline.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_set_deadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_set_deadline(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @splclock()
  store i32 %6, i32* %4, align 4
  %7 = call %struct.TYPE_5__* (...) @current_cpu_datap()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @mach_absolute_time()
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call i32 (...) @timer_resync_deadlines()
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @splx(i32 %17)
  ret void
}

declare dso_local i32 @splclock(...) #1

declare dso_local %struct.TYPE_5__* @current_cpu_datap(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @timer_resync_deadlines(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
