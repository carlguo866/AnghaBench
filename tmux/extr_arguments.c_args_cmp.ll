; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_cmp.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.args_entry*, %struct.args_entry*)* @args_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @args_cmp(%struct.args_entry* %0, %struct.args_entry* %1) #0 {
  %3 = alloca %struct.args_entry*, align 8
  %4 = alloca %struct.args_entry*, align 8
  store %struct.args_entry* %0, %struct.args_entry** %3, align 8
  store %struct.args_entry* %1, %struct.args_entry** %4, align 8
  %5 = load %struct.args_entry*, %struct.args_entry** %3, align 8
  %6 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.args_entry*, %struct.args_entry** %4, align 8
  %9 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
