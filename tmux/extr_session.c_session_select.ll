; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_select.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.winlink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @session_select(%struct.session* %0, i32 %1) #0 {
  %3 = alloca %struct.session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.winlink*, align 8
  store %struct.session* %0, %struct.session** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.session*, %struct.session** %3, align 8
  %7 = getelementptr inbounds %struct.session, %struct.session* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.winlink* @winlink_find_by_index(i32* %7, i32 %8)
  store %struct.winlink* %9, %struct.winlink** %5, align 8
  %10 = load %struct.session*, %struct.session** %3, align 8
  %11 = load %struct.winlink*, %struct.winlink** %5, align 8
  %12 = call i32 @session_set_current(%struct.session* %10, %struct.winlink* %11)
  ret i32 %12
}

declare dso_local %struct.winlink* @winlink_find_by_index(i32*, i32) #1

declare dso_local i32 @session_set_current(%struct.session*, %struct.winlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
