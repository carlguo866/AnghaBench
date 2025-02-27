; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_add_rq_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_add_rq_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deadline_data = type { i32 }
%struct.request = type { i32 }
%struct.rb_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.deadline_data*, %struct.request*)* @deadline_add_rq_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deadline_add_rq_rb(%struct.deadline_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.deadline_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.rb_root*, align 8
  store %struct.deadline_data* %0, %struct.deadline_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.deadline_data*, %struct.deadline_data** %3, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call %struct.rb_root* @deadline_rb_root(%struct.deadline_data* %6, %struct.request* %7)
  store %struct.rb_root* %8, %struct.rb_root** %5, align 8
  %9 = load %struct.rb_root*, %struct.rb_root** %5, align 8
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = call i32 @elv_rb_add(%struct.rb_root* %9, %struct.request* %10)
  ret void
}

declare dso_local %struct.rb_root* @deadline_rb_root(%struct.deadline_data*, %struct.request*) #1

declare dso_local i32 @elv_rb_add(%struct.rb_root*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
