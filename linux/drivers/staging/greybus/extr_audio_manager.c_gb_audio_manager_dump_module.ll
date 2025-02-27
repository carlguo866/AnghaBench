; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager.c_gb_audio_manager_dump_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager.c_gb_audio_manager_dump_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_audio_manager_module = type { i32 }

@modules_rwsem = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_manager_dump_module(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_audio_manager_module*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @down_read(i32* @modules_rwsem)
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.gb_audio_manager_module* @gb_audio_manager_get_locked(i32 %6)
  store %struct.gb_audio_manager_module* %7, %struct.gb_audio_manager_module** %4, align 8
  %8 = call i32 @up_read(i32* @modules_rwsem)
  %9 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %4, align 8
  %10 = icmp ne %struct.gb_audio_manager_module* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %4, align 8
  %16 = call i32 @gb_audio_manager_module_dump(%struct.gb_audio_manager_module* %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.gb_audio_manager_module* @gb_audio_manager_get_locked(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @gb_audio_manager_module_dump(%struct.gb_audio_manager_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
