; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_net_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_net_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.proc_dir_entry = type { %struct.net* }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_net_mkdir(%struct.net* %0, i8* %1, %struct.proc_dir_entry* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @S_IFDIR, align 4
  %10 = load i32, i32* @S_IRUGO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @S_IXUGO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry** %6, i8* %8, i32 %13, i32 2)
  store %struct.proc_dir_entry* %14, %struct.proc_dir_entry** %7, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %16 = icmp ne %struct.proc_dir_entry* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.net*, %struct.net** %4, align 8
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %20 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %19, i32 0, i32 0
  store %struct.net* %18, %struct.net** %20, align 8
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %22 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %23 = call i64 @proc_register(%struct.proc_dir_entry* %21, %struct.proc_dir_entry* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %27 = call i32 @kfree(%struct.proc_dir_entry* %26)
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %7, align 8
  br label %28

28:                                               ; preds = %25, %17
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  ret %struct.proc_dir_entry* %30
}

declare dso_local %struct.proc_dir_entry* @__proc_create(%struct.proc_dir_entry**, i8*, i32, i32) #1

declare dso_local i64 @proc_register(%struct.proc_dir_entry*, %struct.proc_dir_entry*) #1

declare dso_local i32 @kfree(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
