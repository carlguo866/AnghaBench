; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_proc_subdir_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_proc_subdir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32, %struct.proc_dir_entry*, %struct.proc_dir_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_dir_entry*)* @i2o_proc_subdir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_proc_subdir_remove(%struct.proc_dir_entry* %0) #0 {
  %2 = alloca %struct.proc_dir_entry*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %2, align 8
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %6 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %5, i32 0, i32 2
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  store %struct.proc_dir_entry* %7, %struct.proc_dir_entry** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %10 = icmp ne %struct.proc_dir_entry* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %13 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %12, i32 0, i32 1
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %13, align 8
  store %struct.proc_dir_entry* %14, %struct.proc_dir_entry** %4, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  call void @i2o_proc_subdir_remove(%struct.proc_dir_entry* %15)
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %17 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %20 = call i32 @remove_proc_entry(i32 %18, %struct.proc_dir_entry* %19)
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  store %struct.proc_dir_entry* %21, %struct.proc_dir_entry** %3, align 8
  br label %8

22:                                               ; preds = %8
  ret void
}

declare dso_local i32 @remove_proc_entry(i32, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
