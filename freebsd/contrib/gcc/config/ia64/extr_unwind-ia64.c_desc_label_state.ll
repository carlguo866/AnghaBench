; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_label_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_label_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { %struct.unw_labeled_state*, %struct.TYPE_4__ }
%struct.unw_labeled_state = type { %struct.unw_labeled_state*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.unw_state_record*)* @desc_label_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_label_state(i32 %0, %struct.unw_state_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unw_state_record*, align 8
  %5 = alloca %struct.unw_labeled_state*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.unw_state_record* %1, %struct.unw_state_record** %4, align 8
  %6 = call %struct.unw_labeled_state* (...) @alloc_label_state()
  store %struct.unw_labeled_state* %6, %struct.unw_labeled_state** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %9 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %11 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %10, i32 0, i32 1
  %12 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %13 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %12, i32 0, i32 1
  %14 = call i32 @memcpy(%struct.TYPE_3__* %11, %struct.TYPE_4__* %13, i32 4)
  %15 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %16 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dup_state_stack(i32 %18)
  %20 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %21 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %24 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %23, i32 0, i32 0
  %25 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %24, align 8
  %26 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %27 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %26, i32 0, i32 0
  store %struct.unw_labeled_state* %25, %struct.unw_labeled_state** %27, align 8
  %28 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %29 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %30 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %29, i32 0, i32 0
  store %struct.unw_labeled_state* %28, %struct.unw_labeled_state** %30, align 8
  ret void
}

declare dso_local %struct.unw_labeled_state* @alloc_label_state(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dup_state_stack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
