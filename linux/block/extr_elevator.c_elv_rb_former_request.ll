; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_rb_former_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_rb_former_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }
%struct.rb_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @elv_rb_former_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = call %struct.rb_node* @rb_prev(i32* %8)
  store %struct.rb_node* %9, %struct.rb_node** %6, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %11 = icmp ne %struct.rb_node* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %14 = call %struct.request* @rb_entry_rq(%struct.rb_node* %13)
  store %struct.request* %14, %struct.request** %3, align 8
  br label %16

15:                                               ; preds = %2
  store %struct.request* null, %struct.request** %3, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.request*, %struct.request** %3, align 8
  ret %struct.request* %17
}

declare dso_local %struct.rb_node* @rb_prev(i32*) #1

declare dso_local %struct.request* @rb_entry_rq(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
