; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fp_setvalid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fp_setvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fp_setvalid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.x86_fx_thread_state*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = call %struct.TYPE_5__* (...) @current_thread()
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %9, align 8
  store %struct.x86_fx_thread_state* %10, %struct.x86_fx_thread_state** %4, align 8
  %11 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %12 = icmp ne %struct.x86_fx_thread_state* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %16 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i64, i64* @FALSE, align 8
  %22 = call i64 @ml_set_interrupts_enabled(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = call i32 (...) @clear_fpu()
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @ml_set_interrupts_enabled(i64 %24)
  br label %26

26:                                               ; preds = %20, %13
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

declare dso_local %struct.TYPE_5__* @current_thread(...) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32 @clear_fpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
