; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_dig.c_au8522_release_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_dig.c_au8522_release_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au8522_state = type { i32 }

@au8522_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au8522_release_state(%struct.au8522_state* %0) #0 {
  %2 = alloca %struct.au8522_state*, align 8
  store %struct.au8522_state* %0, %struct.au8522_state** %2, align 8
  %3 = call i32 @mutex_lock(i32* @au8522_list_mutex)
  %4 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %5 = icmp ne %struct.au8522_state* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %8 = call i32 @hybrid_tuner_release_state(%struct.au8522_state* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = call i32 @mutex_unlock(i32* @au8522_list_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hybrid_tuner_release_state(%struct.au8522_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
